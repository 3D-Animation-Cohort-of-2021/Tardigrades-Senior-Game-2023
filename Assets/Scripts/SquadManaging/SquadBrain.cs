using System.Collections;
using System.Collections.Generic;
using Unity.VisualScripting;
using UnityEngine;
using UnityEngine.AI;
using UnityEngine.Events;
using UnityEngine.InputSystem.Controls;
using Random = UnityEngine.Random;
public class SquadBrain : MonoBehaviour
{
    public SO_SquadData _movementVector;
    public GameObject _piggyPrefab;
    public int _amountPerGroup;
    public GameActionElementalFormation formationUpdateCall;

    private NavMeshAgent _navMeshAgent;
    private WaitForFixedUpdate _wffu;

    public int _brainNumber = -1;
    public Elem _squadType;
    public float _radius;
    public UnityEvent _activateEvent;

    public Formation _formation = Formation.Cluster;
    private float _spacing = 0;
    private List<CustomTransform> _formationPositions;

    protected Ability _primary;
    protected ToggleAbility _secondary;
    protected Coroutine SecondaryAbility;
    private WaitForSeconds _loopDelay;

    [SerializeField] protected Horde_Info _hordeInfo;

    [SerializeField] private List<TardigradeBase> _myTards;

    private Coroutine activeSquad = null;

    private Camera _cam;
    
    private void Awake()
    {
        _navMeshAgent = GetComponent<NavMeshAgent>();
        _formationPositions = new List<CustomTransform>();

        _primary = gameObject.AddComponent<Ability>();
        _secondary = gameObject.AddComponent<ToggleAbility>();
        Initialize();
    }

    void Start()
    {
        //thisSquadIsActive = false;

        _navMeshAgent.speed = (_navMeshAgent.speed == 0) ? 2.5f : _navMeshAgent.speed;
        Populate(_amountPerGroup);
        _cam = Camera.main;
    }
    public void setInfo(Elem type, int numUnits)
    {
        _squadType = type;
        _amountPerGroup = numUnits;
        Initialize();
    }
    public void Initialize()
    {
        _primary.cooldown = _hordeInfo.GetCD(_squadType);
        _secondary.cooldown = _hordeInfo.GetToggleCD(_squadType);
        _loopDelay = new WaitForSeconds(0.25f);
    }
    private void FixedUpdate()
    {
        if (transform.parent != null && (Vector3.Distance(transform.position, transform.parent.position) >= _radius))
        {
            _navMeshAgent.SetDestination(transform.parent.position + Vector3.ClampMagnitude((transform.parent.position - transform.position), _radius * 0.95f));
        }

        if (transform.parent != null && Vector3.Distance(transform.position, transform.parent.position) <= _radius)
        {
            _navMeshAgent.ResetPath();
        }
    }

    public void WakeUp()
    {
        _brainNumber = SquadManager._squads[SquadManager._squads.Count - 1].SquadID;

        foreach (CustomTransform customTransform in _formationPositions)
        {
            customTransform.Center = transform.parent;
        }

        if (_squadType != Elem.Neutral)
        {
            _movementVector.IncrementSquadTotal();
            ActivateSquad();
        }

        //foreach (TardigradeBase tard in myTards)
        //{
        //    tard.SetupHealthBar(healthBarCanvas, cam);
        //}
        
    }

    private void ActivateSquad(int squadNumber)
    {
        if (activeSquad != null)
        {
            StopCoroutine(activeSquad);
            activeSquad = null;
        }

        if (_movementVector.squadNumber == squadNumber && _squadType != Elem.Neutral)
        {
            activeSquad = StartCoroutine(ActiveSquad());
            foreach (TardigradeBase tard in _myTards)
            {
                ChangeHighlight(tard, true);
            }
        }
        else
        {
            foreach (TardigradeBase tard in _myTards)
            {
                ChangeHighlight(tard, false);
            }
        }
    }

    public void ActivateSquad()
    {
        if (activeSquad != null)
        {
            StopCoroutine(activeSquad);
            activeSquad = null;
        }
        if (_movementVector.squadNumber == _brainNumber /*&& _squadType != Elem.Neutral*/)
        {
            activeSquad = StartCoroutine(ActiveSquad());
            formationUpdateCall.RaiseAction(_squadType, _formation);
            //Grabs new selection and Highlights them
            foreach (TardigradeBase tard in _myTards)
            {
                ChangeHighlight(tard, true);
            }
            //Highlight squad center
            GetComponentInChildren<SquadCenterVisual>().HighLight();
            
        }
        else
        {
            foreach (TardigradeBase tard in _myTards)
            {
                ChangeHighlight(tard, false);
            }
            //UnHighlights squad center
            GetComponentInChildren<SquadCenterVisual>().UnHighLight();
        }
        
    }

    IEnumerator ActiveSquad()
    {
        while (_brainNumber == _movementVector.squadNumber)
        {
            if (_movementVector != null)
            {
                _navMeshAgent.Move(_movementVector.vectorThree * Time.deltaTime * _navMeshAgent.speed);

            }
            yield return _wffu;
        }
    }

    public void RecieveSquad(Collider other)
    {
        SquadClaimTrigger(other);
    }

    private void SquadClaimTrigger(Collider other)
    {
        if (gameObject.layer != LayerMask.NameToLayer("Squad") && other.gameObject.layer == LayerMask.NameToLayer("Squad"))
        {
            SquadManager parentManager = GetComponentInParent<SquadManager>();
            if (parentManager != null)
            {
                parentManager.ReceiveSquad(other);
            }
        }
    }

    public void Populate(int amountOfTards)
    {
        if (_piggyPrefab != null)
        {
            for (int i = 0; i < amountOfTards; i++)
            {

                Vector3 newPos = transform.position;
                GameObject newPiglet = Instantiate(_piggyPrefab, newPos, Quaternion.identity);

                TardigradeBase pigBase = newPiglet.GetComponent<TardigradeBase>();
                TardigradeBase newBase = pigBase.ConvertTardigrade(_squadType);

                if (newBase != null)
                {
                    _myTards.Remove(pigBase);
            
                    Destroy(pigBase);

                    pigBase = newBase;
                }

                AddToSquad(pigBase);
                
                pigBase._mySquad = this;

            }
        }


    }
    
    public void TeleportSquad(Vector3 dest)
    {
        _navMeshAgent.Warp(dest + Vector3.up * _navMeshAgent.baseOffset);
    }

    private Vector3 RandomPointInRadius(float clusterRadius, bool isNeutral)
    {
        Vector3 currentPos = transform.position;
        Vector3 result = Vector3.zero;
        float iterations = 0;
        do
        {
            result.x = Random.Range(-clusterRadius, clusterRadius);
            result.z = Random.Range(-clusterRadius, clusterRadius);
            iterations++;

        } while (IsOverlappingPoint(result) && iterations < 10);

        if (isNeutral)
        {
            if (result.x < clusterRadius * .5 && result.x > 0)
                result.x += 1;
            if (result.x > clusterRadius * -.5 && result.x < 0)
                result.x -= 1;
            if (result.z < clusterRadius * .5 && result.z > 0)
                result.z += 1;
            if (result.z > clusterRadius * -.5 && result.z < 0)
                result.z -= 1;
        }

        return result;
    }

    private bool IsOverlappingPoint(Vector3 point)
    {
        for(int i = 0; i < _formationPositions.Count; i++)
        {
            if(Vector3.Distance(point, _formationPositions[i].Position) <= 0.3f)
            {
                return true;
            }
        }
        return false;
    }

    /// <summary>
    /// Adds a tardigrade to this squad
    /// </summary>
    public void AddToSquad(TardigradeBase newTard)
    {
        CustomTransform newTransform;

        if (transform.parent != null)
        {
            newTransform = new CustomTransform(transform.parent, transform, Vector3.zero, Quaternion.identity, Vector3.one);
        }
        else
        {
            newTransform = new CustomTransform(transform, Vector3.zero, Quaternion.identity, Vector3.one);
        }
        if (_secondary.ToggleStatus())
        {
            newTard.SecondaryAbility();
        }

        _formationPositions.Add(newTransform);
        _myTards.Add(newTard);
        newTard._mySquad = this;
        newTard.GetComponent<FollowPointBehaviour>()._pointObject = newTransform;
        UpdateFormation(_formation, true);
    }
    /// <summary>
    /// Removes a tardigrade from this squad
    /// </summary>
    public void RemoveFromSquad(TardigradeBase oldTard)
    {
        int index = _myTards.IndexOf(oldTard);
        if (index < _myTards.Count && index >= 0)
        {
            _myTards.RemoveAt(index);
            _formationPositions.RemoveAt(index);
            oldTard.GetComponent<FollowPointBehaviour>()._pointObject = null;

            UpdateFormation(_formation, true);
        }

        if(_myTards.Count <= 0)
        {
            SquadManager.RemoveSquad(_brainNumber);
            if(_brainNumber >= 0 && _squadType != Elem.Neutral) { 
                _movementVector.DecrementSquadTotal();
                _movementVector.SetSquadNumber(0);
            }
            Destroy(gameObject);
        }
    }


    /// <summary>
    /// Changes highlight shader material visibility
    /// </summary>
    /// <param name="shouldHighlight">Should the tardigrade be highlighted or unhighighted</param>
    public void ChangeHighlight(TardigradeBase tard, bool shouldHighlight)
    {
        tard.ChangeTardigradeHighlight(shouldHighlight);
    }

    public bool TardsUsePrimaryAbility()
    {

        if (!_primary.activatable)
        {
            return false;
        }


        _primary.Cooldown();

        foreach (TardigradeBase tard in _myTards)
        {
            tard.PrimaryAbility();
        }

        return true;
    }

    public bool TardsUseSecondaryAbility()
    {
        if (!_secondary.activatable)
        {
            return false;
        }


        if (_squadType == Elem.Water)
        {
            if (!_secondary.ToggleStatus() && _secondary.activatable)
            {
                foreach (TardigradeBase tard in _myTards)
                {
                    tard.SecondaryAbility();
                }
                _secondary.FlipToggle();
                _secondary.FlipToggle();
            }
            else
            {
                /*StopCoroutine(SecondaryAbility);
                SecondaryAbility = null; */
            }
        }
        else
        {
            if (_secondary.FlipToggle())
            {
                foreach (TardigradeBase tard in _myTards)
                {
                    tard.SecondaryAbility();
                }
            }
            else 
            {
                foreach (TardigradeBase tard in _myTards)
                {
                    tard.SecondaryAbility();
                }
            }
        }

        return true;
    }
    
    public bool GetToggledStatus()
    {
        return _secondary.ToggleStatus();
    }

    /*
    protected IEnumerator SecondaryLoop()
    {
        foreach (TardigradeBase tard in _myTards)
        {
            tard.SecondaryAbility();
        }

        yield return _loopDelay;

        SecondaryAbility = StartCoroutine(SecondaryLoop());

    }
*/

    public List<TardigradeBase> GetTards()
    {
        return _myTards;
    }

    public bool IsActive()
    {
        if (activeSquad != null)
        {
            return true;
        }

        return false;
    }

    public void UpdateSpacing(float spacingIterator)
    {
        if(_spacing < 3f && spacingIterator > 0)
        {
            _spacing += spacingIterator;
        }
        else if(_spacing > 0 && spacingIterator < 0)
        {
            _spacing += spacingIterator;
        }

        UpdateFormation(_formation, true);
    }

    public void UpdateFormation(int formationIterator)
    {
        int currentFormationValue = (int)_formation;
        Formation newFormation = _formation;
        string[] formationStrings = System.Enum.GetNames(typeof(Formation));

        if(currentFormationValue == 0 && formationIterator == -1)
        {
            newFormation = (Formation)(formationStrings.Length - 1);
        }
        else if (currentFormationValue == formationStrings.Length - 1 && formationIterator == 1)
        {
            newFormation = (Formation)0;
        }
        else
        {
            newFormation = (Formation)(currentFormationValue + formationIterator);
        }
        UpdateFormation(newFormation, false);
    }
        private void UpdateFormation(Formation newFormation, bool formationOverride)
    {
        if (!formationOverride && _formation == newFormation)
        {
            return;
        }

        _formation = newFormation;
        formationUpdateCall.RaiseAction(_squadType, _formation);
        if (_myTards != null)
        {
            switch(_formation)
            {
                case Formation.Cluster:
                    ClusterFormation();
                    break;
                case Formation.Line:
                    LineFormation();
                    break;
                case Formation.Circle:
                    CircleFormation();
                    break;
                case Formation.Wedge:
                    WedgeFormation();
                    break;
            }
        }
        
    }

    private void ClusterFormation()
    {
        float clusterRadius = Mathf.Log((float)_formationPositions.Count, 4) > 0 ? Mathf.Log((float)_formationPositions.Count, 4) : 0.6f;
        float minSpacing = 1;
        float fullSpacing = minSpacing + _spacing;

        for (int i = 0; i < _formationPositions.Count; i++)
        {

            _formationPositions[i].Position = RandomPointInRadius(clusterRadius * fullSpacing, _squadType==Elem.Neutral);
            _formationPositions[i].willRotate = false;
        }
    }

    private void LineFormation()
    {
        
        float minSpacing = 1;
        float fullSpacing = minSpacing + _spacing;
        float centeredOffset = (((float)_formationPositions.Count - 1) * fullSpacing * 0.5f);

        for (int i = 0; i < _formationPositions.Count; i++)
        {
            _formationPositions[i].Position = Vector3.zero;
            _formationPositions[i].Position -= new Vector3(centeredOffset, 0, 0);
            _formationPositions[i].Position += new Vector3((float)i * fullSpacing, 0, 0.5f);
            _formationPositions[i].willRotate = true;

        }
    }

    private void CircleFormation()
    {
        float angleRad = (2 * Mathf.PI) / _formationPositions.Count;
        float currentAngle = 0;
        float minSpacing = (float)_formationPositions.Count * 0.2f;
        float fullSpacing = minSpacing + (_spacing * 1.5f);

        for (int i = 0; i < _formationPositions.Count; i++)
        {
            Vector3 position = new Vector3(Mathf.Cos(currentAngle), 0, Mathf.Sin(currentAngle));
            position *= fullSpacing;
            _formationPositions[i].Position = position;
            currentAngle += angleRad;
            _formationPositions[i].willRotate = false;
        }
    }

    private void WedgeFormation()
    {
        
        float minSpacing = 1;
        float fullSpacing = minSpacing + _spacing;
        float centeredOffset = ((float)(_formationPositions.Count - 1) * fullSpacing * 0.5f);

        for (int i = 0; i < _formationPositions.Count; i++)
        {
            float positionZ = 0f;
            if(i < _formationPositions.Count - 1 - i) 
            { 
                positionZ = (float)i * fullSpacing;
            }
            else
            {
                positionZ = (float)(_formationPositions.Count - 1 - i) * fullSpacing;
            }
            _formationPositions[i].Position = Vector3.zero;
            _formationPositions[i].Position -= new Vector3(centeredOffset, 0, centeredOffset / 2);
            _formationPositions[i].Position += new Vector3(i * fullSpacing, 0, positionZ);

            _formationPositions[i].willRotate = true;
        }
    }

    public void TerminateSquad()
    { 
        List<TardigradeBase> refList = new List<TardigradeBase>();
        foreach (TardigradeBase pig in _myTards)
        {
            refList.Add(pig);
        }
        
        foreach (TardigradeBase pig in refList)
        {
            pig.Death(DeathType.None);
        }
    }
}

public enum Formation
{
    Cluster,
    Line,
    Circle,
    Wedge
}
