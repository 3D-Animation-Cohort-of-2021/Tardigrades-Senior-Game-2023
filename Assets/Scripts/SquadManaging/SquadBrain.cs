using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;
using Random = UnityEngine.Random;

public class SquadBrain : MonoBehaviour
{
    public SO_SquadData movementVector;
    public GameObject piggyPrefab;
    public int amountPerGroup;
    private NavMeshAgent navMeshAgent;
    private WaitForFixedUpdate wffu;
    public int brainNumber = -1;
    public Elem squadType;
    public float radius;

    private Formation formation = Formation.Cluster;
    private float spacing = 1;
    private List<CustomTransform> formationPositions;

    [SerializeField] private List<TardigradeBase> myTards;

    private Coroutine activeSquad = null;

    private Camera cam;
    public Canvas healthBarCanvas;

    private void Awake()
    {
        navMeshAgent = GetComponent<NavMeshAgent>();
        formationPositions = new List<CustomTransform>();
    }

    void Start()
    {
        //thisSquadIsActive = false;

        navMeshAgent.speed = 10f;
        Populate(amountPerGroup);
        cam = Camera.main;
    }

    private void FixedUpdate()
    {
        if (transform.parent != null && (Vector3.Distance(transform.position, transform.parent.position) >= radius))
        {
            navMeshAgent.SetDestination(transform.parent.position + Vector3.ClampMagnitude((transform.position - transform.parent.position), radius * 0.95f));
        }

        if (transform.parent != null && Vector3.Distance(transform.position, transform.parent.position) <= radius)
        {
            navMeshAgent.ResetPath();
        }
    }

    public void WakeUp()
    {
        brainNumber = SquadManager._squads[SquadManager._squads.Count - 1].SquadID;

        foreach (CustomTransform customTransform in formationPositions)
        {
            customTransform.Center = transform.parent;
        }

        if (squadType != Elem.Neutral)
        {
            movementVector.IncrementSquadTotal();
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

        if (movementVector.squadNumber == squadNumber && squadType != Elem.Neutral)
        {
            activeSquad = StartCoroutine(ActiveSquad());
            foreach (TardigradeBase tard in myTards)
            {
                ChangeHighlight(tard, true);
            }
        }
        else
        {
            foreach (TardigradeBase tard in myTards)
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
        if (movementVector.squadNumber == brainNumber && squadType != Elem.Neutral)
        {
            activeSquad = StartCoroutine(ActiveSquad());

            //Grabs new selection and Highlights them
            foreach (TardigradeBase tard in myTards)
            {
                ChangeHighlight(tard, true);
            }
        }
        else
        {
            foreach (TardigradeBase tard in myTards)
            {
                ChangeHighlight(tard, false);
            }
        }
        
    }

    IEnumerator ActiveSquad()
    {
        while (brainNumber == movementVector.squadNumber)
        {
            if (movementVector != null)
            {
                navMeshAgent.Move(movementVector.vectorThree * Time.deltaTime * 10);

            }
            yield return wffu;
        }
    }

    private void OnTriggerEnter(Collider other)
    {
        if (gameObject.layer != LayerMask.NameToLayer("Squad") && other.gameObject.layer == LayerMask.NameToLayer("Squad"))
        {
            SquadManager parentManager = GetComponentInParent<SquadManager>();
            if (parentManager != null)
            {
                parentManager.ReceiveSquadFromChild(other);
            }
        }
    }

    public void Populate(int amountOfTards)
    {
        if (piggyPrefab != null)
        {
            for (int i = 0; i < amountOfTards; i++)
            {

                Vector3 newPos = transform.position + RandomPointInRadius(1f);
                GameObject newPiglet = Instantiate(piggyPrefab, newPos, Quaternion.identity);

                TardigradeBase pigBase = newPiglet.GetComponent<TardigradeBase>();
                TardigradeBase newBase = pigBase.ConvertTardigrade(squadType);

                if (newBase != null)
                {
                    myTards.Remove(pigBase);
            
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
        navMeshAgent.Warp(dest + Vector3.up * navMeshAgent.baseOffset);
    }

    private Vector3 RandomPointInRadius(float clusterRadius)
    {
        Vector3 currentPos = transform.position;
        return new Vector3((Random.Range(-clusterRadius, clusterRadius)), 0, (Random.Range(-clusterRadius, clusterRadius)));
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

        formationPositions.Add(newTransform);
        myTards.Add(newTard);
        newTard._mySquad = this;
        newTard.GetComponent<FollowPointBehaviour>().pointObject = newTransform;
        UpdateFormation(formation, true);
    }
    /// <summary>
    /// Removes a tardigrade from this squad
    /// </summary>
    public void RemoveFromSquad(TardigradeBase oldTard)
    {
        int index = myTards.IndexOf(oldTard);
        myTards.RemoveAt(index);
        formationPositions.RemoveAt(index);
        oldTard.GetComponent<FollowPointBehaviour>().pointObject = null;

            UpdateFormation(formation, true);
    }


    /// <summary>
    /// Changes highlight shader material visibility
    /// </summary>
    /// <param name="shouldHighlight">Should the tardigrade be highlighted or unhighighted</param>
    public void ChangeHighlight(TardigradeBase tard, bool shouldHighlight)
    {
        tard.ChangeTardigradeHighlight(shouldHighlight);
    }

    public void TardsUsePrimaryAbility()
    {
        //check and track cooldown here
        foreach (TardigradeBase tard in myTards)
        {
            tard.PrimaryAbility();
        }
    }
    public void TardsUseSecondaryAbility()
    {
        //check and track cooldown here
        foreach (TardigradeBase tard in myTards)
        {
            tard.SecondaryAbility();   
        }
    }

    public List<TardigradeBase> GetTards()
    {
        return myTards;
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
        if(spacing < 3f && spacingIterator > 0)
        {
            spacing += spacingIterator;
        }
        else if(spacing > 0 && spacingIterator < 0)
        {
            spacing += spacingIterator;
        }

        UpdateFormation(formation, true);
    }

    public void UpdateFormation(int formationIterator)
    {
        int currentFormationValue = (int)formation;
        Formation newFormation = formation;
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
        if (!formationOverride && formation == newFormation)
        {
            return;
        }

        formation = newFormation;

        if (myTards != null)
        {
            switch(formation)
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
        float clusterRadius = Mathf.Log((float)formationPositions.Count, 4);
        float minSpacing = 1;
        float fullSpacing = minSpacing + spacing;

        for (int i = 0; i < formationPositions.Count; i++)
        {

            formationPositions[i].Position = RandomPointInRadius(clusterRadius * fullSpacing);
            formationPositions[i].willRotate = false;
        }
    }

    private void LineFormation()
    {
        
        float minSpacing = 1;
        float fullSpacing = minSpacing + spacing;
        float centeredOffset = (((float)formationPositions.Count - 1) * fullSpacing * 0.5f);

        for (int i = 0; i < formationPositions.Count; i++)
        {
            formationPositions[i].Position = Vector3.zero;
            formationPositions[i].Position -= new Vector3(centeredOffset, 0, 0);
            formationPositions[i].Position += new Vector3((float)i * fullSpacing, 0, 0.5f);
            formationPositions[i].willRotate = true;

        }
    }

    private void CircleFormation()
    {
        float angleRad = (2 * Mathf.PI) / formationPositions.Count;
        float currentAngle = 0;
        float minSpacing = (float)formationPositions.Count * 0.2f;
        float fullSpacing = minSpacing + (spacing * 1.5f);

        for (int i = 0; i < formationPositions.Count; i++)
        {
            Vector3 position = new Vector3(Mathf.Cos(currentAngle), 0, Mathf.Sin(currentAngle));
            position *= fullSpacing;
            formationPositions[i].Position = position;
            currentAngle += angleRad;
            formationPositions[i].willRotate = false;
        }
    }

    private void WedgeFormation()
    {
        
        float minSpacing = 1;
        float fullSpacing = minSpacing + spacing;
        float centeredOffset = ((float)(formationPositions.Count - 1) * fullSpacing * 0.5f);

        for (int i = 0; i < formationPositions.Count; i++)
        {
            float positionZ = 0f;
            if(i < formationPositions.Count - 1 - i) 
            { 
                positionZ = (float)i * fullSpacing;
            }
            else
            {
                positionZ = (float)(formationPositions.Count - 1 - i) * fullSpacing;
            }
            formationPositions[i].Position = Vector3.zero;
            formationPositions[i].Position -= new Vector3(centeredOffset, 0, centeredOffset / 2);
            formationPositions[i].Position += new Vector3(i * fullSpacing, 0, positionZ);

            formationPositions[i].willRotate = true;
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
