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
    public GameObject squadPrefab;
    public static List<Squad> squads = new List<Squad>();

    public int squadIDGiver;
    public float radius;
    
    
    private CinemachineTargetGroup cTgroup;
    public GameObject targetGroup;
    //public Slider squadSlider;
    
    private SquadBrain neutralSquad = null;
    private SquadBrain activeSquad = null;
    
    private Canvas healthBarCanvas;

    private void Start()
    {
        squads = new List<Squad>();

        squadIDGiver = 0;

        cTgroup = targetGroup.GetComponent<CinemachineTargetGroup>();

        StartCoroutine(SetupChildren());
        
        SetUpCanvas();
    }

    /// <summary>
    /// Creates gameobject with canvas for the health bars to be parented to.
    /// <remarks>Written by DJ</remarks>
    /// </summary>
    private void SetUpCanvas()
    {
        GameObject emptyGO = new GameObject();
        emptyGO.name = "HealthBarCanvas";
        healthBarCanvas = emptyGO.AddComponent<Canvas>();
        healthBarCanvas.renderMode = RenderMode.WorldSpace;
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
        GameObject tempObject = other.gameObject;
        SquadBrain squadBrain;
        if (tempObject.CompareTag("SQUAD") && tempObject.TryGetComponent<SquadBrain>(out squadBrain))
        {
            ClaimSquad(tempObject, squadBrain);
        }
    }



    private void ClaimSquad(GameObject squad, SquadBrain childBrain)
    {
        squad.layer = LayerMask.NameToLayer("Center");

        if (childBrain.squadType != Elem.Neutral)
        {
            squads.Add(new Squad() { SquadName = $"Squad {squads.Count}", SquadID = squadIDGiver, SquadObj = childBrain });
            
            squadIDGiver++;
        }
        else
        {
            squads.Add(new Squad() { SquadName = $"Squad {squads.Count}", SquadID = -1, SquadObj = childBrain });
            neutralSquad = childBrain;
        }

        if (childBrain.squadType == Elem.Neutral)
        {
            float centerOffset = GetComponent<NavMeshAgent>().baseOffset;

            childBrain.TeleportSquad(transform.position + Vector3.down * centerOffset);
        }
        
        
        childBrain.healthBarCanvas = healthBarCanvas;
        
        squad.transform.parent = transform;

        AddToTargetGroup(squad);

        childBrain.WakeUp();
        SetActiveSquad();
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
            
            if (currentBrain.IsActive() && currentBrain.squadType == Elem.Neutral)
            {
                neutralSquad = currentBrain;
                activeSquad = null;
                break;
            }
            else if (currentBrain.IsActive())
            {
                activeSquad = squad.SquadObj.GetComponent<SquadBrain>();
                break;
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

        
        neutralSquad.RemoveFromSquad(tard);
        //destroy the old tardigradeBase component
        Destroy(tard);
        

        activeSquad.AddToSquad(newBase);
        newBase.mySquad = activeSquad;
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
    public void SquadUseSecondaryAbility()
    {
        SetActiveSquad();
        if (activeSquad == null)
        {
            print("Neutrals can't use abilities!");
            return;
        }
        activeSquad.TardsUseSecondaryAbility();
    }

    public void UpdateActiveFormation(int formationIterator)
    {
        SetActiveSquad();
        if (activeSquad != null)
        {
            activeSquad.UpdateFormation(formationIterator);
        }
    }

    public void UpdateSpacing(float spacing)
    {
        SetActiveSquad();
        if (activeSquad != null)
        {
            activeSquad.UpdateSpacing(spacing);
        }
    }

    
}
