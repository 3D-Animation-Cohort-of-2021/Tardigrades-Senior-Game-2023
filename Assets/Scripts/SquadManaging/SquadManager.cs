using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;
using Cinemachine;
using Random = UnityEngine.Random;
using UnityEngine.AI;
using UnityEngine.UI;
using Unity.VisualScripting;

//using Random = UnityEngine.Random;

//Made By Parker Bennion & Marshall Krueger
public class SquadManager : MonoBehaviour
{
    public GameObject _squadPrefab;
    public Horde_Info hordeBrain;
    public static List<Squad> _squads = new List<Squad>();

    public static int _squadIDGiver;
    public float _squadRadius = 1f;
    public float _centerRadius = 2.5f;
    public GameActionElemental _gameActionElemental;
    public GameActionElemental _abilityElemental;

    private CinemachineTargeting _camTargetScript;
    public GameObject _targetGroup;
    //public Slider squadSlider;

    private SquadBrain _neutralSquad = null;
    private SquadBrain _activeSquad = null;

    private Canvas _healthBarCanvas;


    private void Start()
    {
        _squads = new List<Squad>();

        _squadIDGiver = 0;

        if (_targetGroup != null)
        {
            _camTargetScript = _targetGroup.GetComponent<CinemachineTargeting>();
            AddToTargetGroup(gameObject, _centerRadius);
        }

        Collider[] colliders = GetComponentsInChildren<Collider>();

        foreach (Collider collider in colliders)
        {
            if (collider.gameObject == gameObject)
            {
                continue;
            }

        }

        StartCoroutine(SetupChildren());

        InitializeUI();
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
                AddToTargetGroup(childSquad, _squadRadius);
                ClaimSquad(childSquad, squadBrain);
            }
        }
    }

    public void ReceiveSquad(Collider other)
    {
        SquadClaimTrigger(other);
    }

    //on tirgger with a squad spawning prefab. add to the squad list and instance a squad.

    private void SquadClaimTrigger(Collider other)
    {
        GameObject collidedObject = other.gameObject;
        SquadBrain squadBrain;
        if (collidedObject.CompareTag("SQUAD") && collidedObject.TryGetComponent<SquadBrain>(out squadBrain))
        {
            collidedObject.GetComponent<SquadBrain>()._activateEvent.Invoke();
            ClaimSquad(collidedObject, squadBrain);
        }
    }



    private void ClaimSquad(GameObject squad, SquadBrain childBrain)
    {
        squad.layer = LayerMask.NameToLayer("Center");
        SquadBrain matchingSquad;
        //Tell Horde Info to update it's count

        if ((HasSquadWithElement(childBrain._squadType, out matchingSquad)))
        {
            if (matchingSquad.GetInstanceID() != childBrain.GetInstanceID())
            {
                _gameActionElemental.RaiseAction(childBrain._squadType, childBrain.GetTards().Count);
                SubscribeToPigDestroyEvent(childBrain);

                MergeSquads(matchingSquad, childBrain);
                return;
            }
            else
            {
                return;
            }
        }
        if (childBrain._squadType != Elem.Neutral)
        {
            _squads.Add(new Squad() { SquadName = $"Squad {_squads.Count}", SquadID = _squadIDGiver, SquadObj = childBrain });

            _squadIDGiver++;
        }
        else
        {
            _squads.Add(new Squad() { SquadName = $"Squad {_squads.Count}", SquadID = -1, SquadObj = childBrain });
            _neutralSquad = childBrain;
        }

        if (childBrain._squadType == Elem.Neutral)
        {
            float centerOffset = GetComponent<NavMeshAgent>().baseOffset;

            childBrain.TeleportSquad(transform.position + Vector3.down * centerOffset);
        }

        squad.transform.parent = transform;

        AddToTargetGroup(squad);

        childBrain.WakeUp();
        SetActiveSquad();

        _gameActionElemental.RaiseAction(childBrain._squadType, childBrain.GetTards().Count);
        SubscribeToPigDestroyEvent(childBrain);
    }

    private void SubscribeToPigDestroyEvent(SquadBrain squadBrain)
    {
        List<TardigradeBase> subSquad = squadBrain.GetTards();

        foreach (TardigradeBase tardigrade in subSquad)
        {
            tardigrade.OnDestroy += CountTardigradeDeath;
        }
    }

    private void CountTardigradeDeath(TardigradeBase tardigrade)
    {
        _gameActionElemental.RaiseAction(tardigrade.GetElementType(), -1);
        tardigrade.OnDestroy -= CountTardigradeDeath;
    }

    private bool HasSquadWithElement(Elem elementType, out SquadBrain matchingSquad)
    {
        for (int i = 0; i < _squads.Count; i++)
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
        foreach (Squad squad in _squads)
        {
            squad.SquadObj.TeleportSquad(transform.position + Vector3.down * centerOffset);
        }
    }

    public void MergeSquads(SquadBrain primaryBrain, SquadBrain disposableBrain)
    {

        List<TardigradeBase> tardigradesToTransfer = disposableBrain.GetTards();

        for (int i = tardigradesToTransfer.Count - 1; i >= 0; i--)
        {
            TardigradeBase tempTardigrade = tardigradesToTransfer[i];

            disposableBrain.RemoveFromSquad(tempTardigrade);
            primaryBrain.AddToSquad(tempTardigrade);

            if (_activeSquad == primaryBrain)
            {
                _activeSquad.ChangeHighlight(tempTardigrade, true);
            }
            else if (_activeSquad != null)
            {
                _activeSquad.ChangeHighlight(tempTardigrade, false);
            }

        }

        for (int i = 0; i < _squads.Count; ++i)
        {
            if (_squads[i].SquadID == disposableBrain._brainNumber)
            {
                _squads.RemoveAt(i);
                break;
            }
        }

        int newSquadCounter = 0;
        for (int i = 0; i < _squads.Count; ++i)
        {
            if (_squads[i].SquadObj._squadType != Elem.Neutral)
            {
                _squads[i].SquadID = newSquadCounter;
                _squads[i].SquadObj._brainNumber = newSquadCounter;
                newSquadCounter++;
            }
        }

        DestroySquad(disposableBrain);
    }

    public void DestroySquad(SquadBrain brainToDestroy)
    {
        Destroy(brainToDestroy.gameObject);
    }

    private void AddToTargetGroup(GameObject squad, float targetRadius = 1f)
    {
        if (_camTargetScript != null)
        {
            _camTargetScript.AddTarget(squad.transform, targetRadius);
        }
    }



    private void SetActiveSquad()
    {
        foreach (Squad squad in _squads)
        {
            SquadBrain currentBrain = squad.SquadObj;

            if (currentBrain._squadType == Elem.Neutral)
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

        if (_neutralSquad == null)
        {
            print("No Neutrals to mutate");
            return;
        }

        List<TardigradeBase> neutralTards = _neutralSquad.GetTards();
        List<TardigradeBase> activeTards = _activeSquad.GetTards();

        //Turn list of tards into a list of their positions then take the average to find the middle of the group;
        List<Vector3> transforms = activeTards.Select(go => go.transform.position).ToList();
        Vector3 middleOfGroup = transforms.Aggregate(new Vector3(0, 0, 0), (s, v) => s + v) / transforms.Count;

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
            _gameActionElemental.RaiseAction(_activeSquad._squadType, 1);
            _gameActionElemental.RaiseAction(_neutralSquad._squadType, -1);
        }

    }
    private void Mutate(TardigradeBase tard)
    {
        //get old tards stats like hp and position

        TardigradeBase newBase = tard.ConvertTardigrade(_activeSquad._squadType);

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

        if (_activeSquad.TardsUsePrimaryAbility())
        {
            _abilityElemental.RaiseAction(_activeSquad._squadType, 1); // 1 = primary ability
        }

    }
    public void SquadUseSecondaryAbility()
    {
        SetActiveSquad();
        if (_activeSquad == null)
        {
            print("Neutrals can't use abilities!");
            return;
        }
        if (_activeSquad.TardsUseSecondaryAbility())
        {
            _abilityElemental.RaiseAction(_activeSquad._squadType, 2); // 2 = secondary ability
        }
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
                _gameActionElemental.RaiseAction(sBrain._squadType, sBrain.GetTards().Count);
            }
            else
                Debug.Log("Child is not a Squad Brain");
        }
    }

    public void TerminateHorde()
    {
        hordeBrain.canFail = false;
        foreach (Squad sq in _squads)
        {
            sq.SquadObj.TerminateSquad();
        }
        if (_squads.Count != 0)
            _squads.Clear();

        _squadIDGiver = 0;

    }

    public void TeleportHorde(Transform[] squadPoints, Transform centerPoint)
    {
        foreach (Squad sq in _squads)
        {
            if (sq.SquadObj != null)
                sq.SquadObj.GetComponent<NavMeshAgent>().enabled = false;
        }
        GetComponent<NavMeshAgent>().enabled = false;
        transform.position = centerPoint.position;
        foreach (Squad sq in _squads)
        {
            if (sq.SquadObj != null)
            {
                switch (sq.GetSquadType())
                {
                    case Elem.Neutral:
                        sq.SquadObj.gameObject.transform.position = squadPoints[0].position;
                        break;
                    case Elem.Fire:
                        sq.SquadObj.gameObject.transform.position = squadPoints[1].position;
                        break;
                    case Elem.Stone:
                        sq.SquadObj.gameObject.transform.position = squadPoints[2].position;
                        break;
                    case Elem.Water:
                        sq.SquadObj.gameObject.transform.position = squadPoints[3].position;
                        break;
                }
                sq.SquadObj.GetComponent<NavMeshAgent>().enabled = true;
            }

        }
        gameObject.GetComponent<NavMeshAgent>().enabled = true;
    }

    public void RallyAtPoint(Vector3 rallyPoint)
    {
        //gameObject.transform.position = rallyPoint;
        foreach (Squad grp in _squads)
        {
            grp.SquadObj.gameObject.transform.position = rallyPoint;
        }
    }

    public static void RemoveSquad(int brainID)
    {
        bool squadRemoved = false;
        for (int i = 0; i < _squads.Count; i++)
        {
            if (_squads[i].SquadID == brainID)
            {
                _squads.RemoveAt(i);
                if (brainID != -1)
                {
                    _squadIDGiver = 0;
                    squadRemoved = true;
                }
                break;
            }
        }

        if (squadRemoved)
        {
            for (int i = 0; i < _squads.Count; i++)
            {
                if (_squads[i].SquadID != -1)
                {
                    _squads[i].SquadID = _squadIDGiver;
                    _squads[i].SquadObj._brainNumber = _squadIDGiver;
                    _squads[i].SquadObj.ActivateSquad();
                    _squadIDGiver++;
                }
            }
        }
    }


}
