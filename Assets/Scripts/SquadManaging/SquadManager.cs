using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;
using Cinemachine;
using Random = UnityEngine.Random;
using UnityEngine.AI;
using UnityEngine.UI;

//using Random = UnityEngine.Random;

//Made By Parker Bennion
public class SquadManager : MonoBehaviour
{
    public GameObject _squadPrefab;
    public static List<Squad> _squads = new List<Squad>();

    public int _squadIDGiver;
    public float _radius;
    private UI_Brain_Interface brainInterface;

    private CinemachineTargeting _camTargetScript;
    public GameObject _targetGroup;
    //public Slider squadSlider;
    
    private SquadBrain _neutralSquad = null;
    private SquadBrain _activeSquad = null;
    
    private Canvas _healthBarCanvas;

    private void Awake()
    {
        brainInterface = FindObjectOfType<UI_Brain_Interface>();
        brainInterface.resetHordeToZero();
        //Nate's plugin to the UI
    }

    private void Start()
    {
        _squads = new List<Squad>();

        _squadIDGiver = 0;

        _camTargetScript = _targetGroup.GetComponent<CinemachineTargeting>();

        StartCoroutine(SetupChildren());
        
        SetUpCanvas();
        
        InitializeUI();
    }

    /// <summary>
    /// Creates gameobject with canvas for the health bars to be parented to.
    /// <remarks>Written by DJ</remarks>
    /// </summary>
    private void SetUpCanvas()
    {
        GameObject emptyGO = new GameObject();
        emptyGO.name = "HealthBarCanvas";
        _healthBarCanvas = emptyGO.AddComponent<Canvas>();
        _healthBarCanvas.renderMode = RenderMode.WorldSpace;
        emptyGO.AddComponent<CanvasScaler>();
        emptyGO.AddComponent<GraphicRaycaster>();

    }

    IEnumerator SetupChildren()
    {
        yield return new WaitForFixedUpdate();
        for (int i = 0; i < transform.childCount; i++)
        {
            SquadBrain squadBrain;
            if (transform.GetChild(i).TryGetComponent<SquadBrain>(out squadBrain))
            {
                GameObject childSquad = transform.GetChild(i).gameObject;
                _camTargetScript.AddTarget(childSquad.transform);
                ClaimSquad(childSquad, squadBrain);
            }
        }
    }

    public void ReceiveSquadFromChild(Collider other)
    {
        OnTriggerEnter(other);
    }

    //on tirgger with a squad spawning prefab. add to the squad list and instance a squad.
    private void OnTriggerEnter(Collider other)
    {
        GameObject collidedObject = other.gameObject;
        SquadBrain squadBrain;
        if (collidedObject.CompareTag("SQUAD") && collidedObject.TryGetComponent<SquadBrain>(out squadBrain))
        {
            ClaimSquad(collidedObject, squadBrain);
        }
    }



    private void ClaimSquad(GameObject squad, SquadBrain childBrain)
    {

        squad.layer = LayerMask.NameToLayer("Center");
        SquadBrain matchingSquad;
        //Tell Horde Info to update it's count
        brainInterface.UpdateTypeCount(childBrain.squadType, childBrain.amountPerGroup);
        if (HasSquadWithElement(childBrain.squadType, out matchingSquad))
        {
            MergeSquads(matchingSquad, childBrain);
            return;
        }

        if (childBrain.squadType != Elem.Neutral)
        {
            _squads.Add(new Squad() { SquadName = $"Squad {_squads.Count}", SquadID = _squadIDGiver, SquadObj = childBrain });
            
            _squadIDGiver++;
        }
        else
        {
            _squads.Add(new Squad() { SquadName = $"Squad {_squads.Count}", SquadID = -1, SquadObj = childBrain });
            _neutralSquad = childBrain;
        }

        if (childBrain.squadType == Elem.Neutral)
        {
            float centerOffset = GetComponent<NavMeshAgent>().baseOffset;

            childBrain.TeleportSquad(transform.position + Vector3.down * centerOffset);
        }
        
        
        childBrain.healthBarCanvas = _healthBarCanvas;
        
        squad.transform.parent = transform;

        AddToTargetGroup(squad);

        childBrain.WakeUp();
        SetActiveSquad();
    }

    private bool HasSquadWithElement(Elem elementType, out SquadBrain matchingSquad)
    {
        for(int i = 0; i < _squads.Count; i++)
        {
            if (_squads[i].GetSquadType() == elementType)
            {
                matchingSquad = _squads[i].SquadObj;
                return true;
            }
        }

        matchingSquad = null;
        return false;
    }

    public void TeleportSquadsToCenter(float centerOffset)
    {
        foreach(Squad squad in _squads)
        {
            squad.SquadObj.TeleportSquad(transform.position + Vector3.down * centerOffset);
        }
    }

    public void MergeSquads(SquadBrain primaryBrain, SquadBrain disposableBrain)
    {

        List<TardigradeBase> tardigradesToTransfer = disposableBrain.GetTards();

        for(int i = tardigradesToTransfer.Count - 1; i >= 0; i--)
        {
            TardigradeBase tempTardigrade = tardigradesToTransfer[i];

            disposableBrain.RemoveFromSquad(tempTardigrade);
            primaryBrain.AddToSquad(tempTardigrade);

            if(_activeSquad == primaryBrain)
            {
                _activeSquad.ChangeHighlight(tempTardigrade, true);
            }
            else
            {
                _activeSquad.ChangeHighlight(tempTardigrade, false);
            }
            
        }

        for(int i = 0; i < _squads.Count; ++i)
        {
            if (_squads[i].SquadID == disposableBrain.brainNumber)
            {
                _squads.RemoveAt(i);
                break;
            }
        }

        int newSquadCounter = 0;
        for (int i = 0; i < _squads.Count; ++i)
        {
            if (_squads[i].SquadObj.squadType != Elem.Neutral)
            {
                _squads[i].SquadID = newSquadCounter;
                _squads[i].SquadObj.brainNumber = newSquadCounter;
                newSquadCounter++;
            }
        }

        DestroySquad(disposableBrain);
    }

    public void DestroySquad(SquadBrain brainToDestroy)
    {
        Destroy(brainToDestroy.gameObject);
    }

    private void AddToTargetGroup(GameObject squad)
    {
        _camTargetScript.AddTarget(squad.transform);
    }


    
    private void SetActiveSquad()
    {
        foreach (Squad squad in _squads)
        {
            SquadBrain currentBrain = squad.SquadObj;
            
            if (currentBrain.squadType == Elem.Neutral)
            {
                _neutralSquad = currentBrain;
                _activeSquad = null;
            }
            else if (currentBrain.IsActive())
            {
                _activeSquad = squad.SquadObj.GetComponent<SquadBrain>();
                break;
            }
        }
    }
    public void MutateActiveSquad()
    {
        SetActiveSquad();
        if (_activeSquad == null)
        {
            print("Neutrals can't be mutated!");
            return;
        }

        if(_neutralSquad == null)
        {
            print("No Neutrals to mutate");
            return;
        }
        
        List<TardigradeBase> neutralTards = _neutralSquad.GetTards();
        List<TardigradeBase> activeTards = _activeSquad.GetTards();

        //Turn list of tards into a list of their positions then take the average to find the middle of the group;
        List<Vector3> transforms = activeTards.Select(go => go.transform.position).ToList();
        Vector3 middleOfGroup = transforms.Aggregate(new Vector3(0,0,0), (s,v) => s + v) / transforms.Count;

        float minDistance = System.Single.PositiveInfinity;
        TardigradeBase closestTard = null;

        foreach (TardigradeBase tard in neutralTards)
        {
            float distance = Vector3.Distance(tard.transform.position, middleOfGroup);
            if (distance < minDistance)
            {
                closestTard = tard;
                minDistance = distance;
            }
        }

        if (closestTard == null)
        {
            print("Hey There are no neutral tards to transform");
        }
        else
        {
            Mutate(closestTard);
        }
            
    }
    private void Mutate(TardigradeBase tard)
    {
        //get old tards stats like hp and position

        TardigradeBase newBase = tard.ConvertTardigrade(_activeSquad.squadType);

        if (newBase == null) 
        {
            return;
        }

        
        _neutralSquad.RemoveFromSquad(tard);
        //destroy the old tardigradeBase component
        Destroy(tard);
        

        _activeSquad.AddToSquad(newBase);
        newBase._mySquad = _activeSquad;
        _activeSquad.ChangeHighlight(newBase, true);


    }

    public void SquadUsePrimaryAbility()
    {
        SetActiveSquad();
        if (_activeSquad == null)
        {
            print("Neutrals can't use abilities!");
            return;
        }
        _activeSquad.TardsUsePrimaryAbility();
    }
    public void SquadUseSecondaryAbility()
    {
        SetActiveSquad();
        if (_activeSquad == null)
        {
            print("Neutrals can't use abilities!");
            return;
        }
        _activeSquad.TardsUseSecondaryAbility();
    }

    public void UpdateActiveFormation(int formationIterator)
    {
        SetActiveSquad();
        if (_activeSquad != null)
        {
            _activeSquad.UpdateFormation(formationIterator);
        }
    }

    public void UpdateSpacing(float spacing)
    {
        SetActiveSquad();
        if (_activeSquad != null)
        {
            _activeSquad.UpdateSpacing(spacing);
        }
    }

    private void InitializeUI()
    {
        foreach (Transform child in gameObject.transform)
        {
            SquadBrain sBrain = child.gameObject.GetComponent<SquadBrain>();
            if (sBrain != null)
            {
                brainInterface.UpdateTypeCount(sBrain.squadType, sBrain.amountPerGroup);
            }
            else
                Debug.Log("Child is not a Squad Brain");
        }
    }

    
}
