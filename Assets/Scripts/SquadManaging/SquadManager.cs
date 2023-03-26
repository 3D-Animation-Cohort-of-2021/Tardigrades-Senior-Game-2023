using System.Collections;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;
using Cinemachine;
using Random = UnityEngine.Random;
using UnityEngine.AI;

//using Random = UnityEngine.Random;

//Made By Parker Bennion
public class SquadManager : MonoBehaviour
{
    public GameObject squadPrefab;
    public static List<Squad> squads = new List<Squad>();

    public int squadIDGiver;
    public float radius;
    
    
    private CinemachineTargetGroup cTgroup;
    public GameObject targetGroup;
    //public Slider squadSlider;
    
    private SquadBrain neutralSquad = null;
    private SquadBrain activeSquad = null;
    

    private void Start()
    {
        squads = new List<Squad>();

        squadIDGiver = 0;

        cTgroup = targetGroup.GetComponent<CinemachineTargetGroup>();

        StartCoroutine(SetupChildren());

    }

    IEnumerator SetupChildren()
    {
        yield return new WaitForFixedUpdate();
        for (int i = 0; i < transform.childCount; i++)
        {
            GameObject childSquad = transform.GetChild(i).gameObject;
            ClaimSquad(childSquad);
        }
    }

    public void ReceiveSquadFromChild(Collider other)
    {
        OnTriggerEnter(other);
    }

    //on tirgger with a squad spawning prefab. add to the squad list and instance a squad.
    private void OnTriggerEnter(Collider other)
    {
        GameObject tempObject = other.gameObject;
        if (tempObject.CompareTag("SQUAD"))
        {
            ClaimSquad(tempObject);
        }
    }



    private void ClaimSquad(GameObject squad)
    {
        squad.layer = LayerMask.NameToLayer("Center");

        SquadBrain childBrain = squad.GetComponent<SquadBrain>();
        if (childBrain.squadType != Elem.Neutral)
        {
            squads.Add(new Squad() { SquadName = $"Squad {squads.Count}", SquadID = squadIDGiver, SquadObj = childBrain });
            squadIDGiver++;
        }
        else
        {
            squads.Add(new Squad() { SquadName = $"Squad {squads.Count}", SquadID = -1, SquadObj = childBrain });
        }

        if (childBrain.squadType == Elem.Neutral)
        {
            float centerOffset = GetComponent<NavMeshAgent>().baseOffset;

            childBrain.TeleportSquad(transform.position + Vector3.down * centerOffset);
        }


        squad.transform.parent = transform;

        AddToTargetGroup(squad);

        childBrain.WakeUp();
    }

    public void TeleportSquadsToCenter(float centerOffset)
    {
        foreach(Squad squad in squads)
        {
            squad.SquadObj.TeleportSquad(transform.position + Vector3.down * centerOffset);
        }
    }

    private void AddToTargetGroup(GameObject squad)
    {
        //cTgroup.AddMember(squad.transform, 1, 1);
    }

    
    private void SetActiveSquad()
    {
        foreach (Squad squad in squads)
        {
            SquadBrain currentBrain = squad.SquadObj;
            
            if (currentBrain.squadType == Elem.Neutral)
            {
                neutralSquad = squad.SquadObj.GetComponent<SquadBrain>();
            }

            if (currentBrain.IsActive() && currentBrain.squadType == Elem.Neutral)
            {
                activeSquad = null;
                break;
            }
            else if (currentBrain.IsActive())
            {
                activeSquad = squad.SquadObj.GetComponent<SquadBrain>();
            }
        }
    }
    public void MutateActiveSquad()
    {
        SetActiveSquad();
        if (activeSquad == null)
        {
            print("Neutrals can't be mutated!");
            return;
        }

        if(neutralSquad == null)
        {
            print("No Neutrals to mutate");
            return;
        }
        
        List<TardigradeBase> neutralTards = neutralSquad.GetTards();
        List<TardigradeBase> activeTards = activeSquad.GetTards();

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

        TardigradeBase newBase = tard.ConvertTardigrade(activeSquad.squadType);

        if (newBase == null) 
        {
            return;
        }

        //destroy the old tard
        neutralSquad.RemoveFromSquad(tard);
        Destroy(tard);
        //instatiate new one in its place

        activeSquad.AddToSquad(newBase);
        activeSquad.ChangeHighlight(newBase, true);


    }

    public void SquadUsePrimaryAbility()
    {
        SetActiveSquad();
        if (activeSquad == null)
        {
            print("Neutrals can't use abilities!");
            return;
        }
        activeSquad.TardsUsePrimaryAbility();
    }
}
