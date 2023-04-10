using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;
using Cinemachine;
using Random = UnityEngine.Random;

//using Random = UnityEngine.Random;

//Made By Parker Bennion
public class SquadManager : MonoBehaviour
{
    [SerializeField]private SO_SquadData SquadDataSO;
    public GameObject parentObj, pigletPrefab, squadPrefab;
    public static List<Squad> squads = new List<Squad>();
    private Vector3 squadInstanceTempVector;
    public int howManySquads;
    [SerializeField] private Camera cam;
    [SerializeField]private Canvas healthBarCanvas;

    public int squadIDGiver;
    public float radius;
    public int amountPerGroup;
    
    
    private CinemachineTargetGroup cTgroup;
    public GameObject targetGroup;
    //public Slider squadSlider;
    
    private SquadBrain neutralSquad = null;
    private SquadBrain activeSquad = null;
    [SerializeField]private TardigradeBase[] prefabs;
    

    private void Start()
    {
        squads = new List<Squad>();
        squadIDGiver = 0;

        StartCoroutine(InstanceSquadManually());
    }
    private Vector3 RandomPointInRadius() 
    {
        Vector3 currentPos = transform.position;
        return new Vector3((currentPos.x + Random.Range(-radius, radius)), currentPos.y, (currentPos.z + Random.Range(-radius, radius)));
    }

    //on tirgger with a squad spawning prefab. add to the squad list and instance a squad.
    private void OnTriggerEnter(Collider other)
    {
        GameObject tempObject;
        if (other.CompareTag("SQUAD"))
        {
            squads.Add(new Squad(){SquadName = other.name, SquadID = squads.Count , SquadObj = other.gameObject});
            tempObject = other.gameObject;
            squadInstanceTempVector = tempObject.transform.position;
            InstanceNewSquad(tempObject);
            Destroy(tempObject);
        }
    }
    
    IEnumerator InstanceSquadManually()
    {
        foreach (Elem TardType in Enum.GetValues(typeof(Elem)))
        {
            GameObject groupPoint = Instantiate(squadPrefab, squadInstanceTempVector, Quaternion.identity, parentObj.transform);
            squads.Add(new Squad(){SquadName = $"plop + {squads.Count}", SquadID = squadIDGiver , SquadObj = groupPoint});
            if (groupPoint.TryGetComponent<SquadBrain>(out SquadBrain newSquad))
            {
                newSquad.squadType = TardType;
                newSquad.cam = cam;
                newSquad.healthBarCanvas = healthBarCanvas;
            }
            squadIDGiver++;
            yield return new WaitForSeconds(.01f);
        }
        
        /*for (int i = 0; i < Enum.GetNames(typeof(Elem)).Length; i++)
        {
            squads.Add(new Squad(){SquadName = $"plop + {squads.Count}", SquadID = squadIDGiver , SquadObj = squadPrefab});
            GameObject groupPoint = Instantiate(squadPrefab, squadInstanceTempVector, Quaternion.identity, parentObj.transform);
            groupPoint.GetComponent<SquadBrain>().squadType = Elem.Neutral;
            squadIDGiver++;
            yield return new WaitForSeconds(.01f);
            for (int j = 0; j < amountPerGroup; j++) 
            {
                Vector3 newPos = RandomPointInRadius();
                GameObject newPiglet = Instantiate(pigletPrefab, newPos, Quaternion.identity);
                newPiglet.GetComponent<FollowPointBehaviour>().pointObject = groupPoint;
                if (targetGroup != null)
                {
                    cTgroup = targetGroup.GetComponent<CinemachineTargetGroup>();
                    cTgroup.AddMember(newPiglet.transform, 1f, 5f);
                }
            }
        }*/
    }

    //instances the new squad as a child of the players certer.
    public void InstanceNewSquad(GameObject newSquad)
    {
        GameObject groupPoint = Instantiate(squadPrefab, squadInstanceTempVector, Quaternion.identity, parentObj.transform);
        for (int j = 0; j < amountPerGroup; j++) 
        {
            Vector3 newPos = RandomPointInRadius();
            GameObject newPiglet = Instantiate(pigletPrefab, newPos, Quaternion.identity);
            newPiglet.GetComponent<FollowPointBehaviour>().pointObject = groupPoint;
        }
        //Debug.Log(squads[squadIDGiver].SquadName + " Name");
        //Debug.Log(squads[squadIDGiver].SquadID + " ID");
        //Debug.Log(squads[squadIDGiver].SquadObj + " GameObject");
        squadIDGiver++;
    }

    private void SetActiveSquad()
    {
        foreach (Squad squad in squads)
        {
            if(SquadDataSO.squadNumber == 0)
            {
                activeSquad = null;
                break;
            }
            if (squad.SquadID == 0)
            {
                neutralSquad = squad.SquadObj.GetComponent<SquadBrain>();
            }
            if (squad.SquadID == SquadDataSO.squadNumber)
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
        
        List<TardigradeBase> neutralTards = neutralSquad.GetTards();
        List<TardigradeBase> activeTards = activeSquad.GetTards();

        //Turn list of tards into a list of their positions then take the average to find the middle of the group;
        List<Vector3> transforms = activeTards.Select(go => go.transform.position).ToList();
        Vector3 middleOfGroup = transforms.Aggregate(new Vector3(0,0,0), (s,v) => s + v) / transforms.Count;

        float minDistance = Single.PositiveInfinity;
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
        if(closestTard == null) print("Hey There are no neutral tards to transform");
        else Mutate(closestTard);
    }
    private void Mutate(TardigradeBase tard)
    {
        //get old tards stats like hp and position
        Transform trans = tard.transform;
        float oldHealth = tard.health;
        //destroy the old tard
        neutralSquad.RemoveFromSquad(tard);
        Destroy(tard.gameObject);
        //instatiate new one in its place
        foreach (TardigradeBase obj in prefabs)
        {
            if (obj.GetElementType() == activeSquad.squadType)
            {
                TardigradeBase newTard = Instantiate(obj, trans.position, trans.rotation);
                newTard.health = oldHealth;
                activeSquad.AddToSquad(newTard);
                activeSquad.ChangeHighlight(newTard, true);
                break;
            }
        }
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
}
