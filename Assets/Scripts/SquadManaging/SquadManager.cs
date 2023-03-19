using System.Collections;
using System.Collections.Generic;
using Unity.VisualScripting;
using UnityEngine;
using Cinemachine;
using Random = UnityEngine.Random;

//using Random = UnityEngine.Random;

//Made By Parker Bennion
public class SquadManager : MonoBehaviour
{
    public GameObject squadPrefab;
    public static List<Squad> squads = new List<Squad>();
    private Vector3 squadInstanceTempVector;
    public int howManySquads;
    public int squadIDGiver;
    public float radius;
    public int amountPerGroup;
    
    
    private CinemachineTargetGroup cTgroup;
    public GameObject targetGroup;
    //public Slider squadSlider;

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
    private Vector3 RandomPointInRadius() 
    {
        Vector3 currentPos = transform.position;
        return new Vector3((currentPos.x + Random.Range(-radius, radius)), currentPos.y, (currentPos.z + Random.Range(-radius, radius)));
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
            squads.Add(new Squad() { SquadName = $"Squad {squads.Count}", SquadID = squads.Count, SquadObj = squad });

            squad.transform.parent = transform;

            AddToTargetGroup(squad);

            childBrain.WakeUp();
            squadIDGiver++;
    }

    private void AddToTargetGroup(GameObject squad)
    {
        //cTgroup.AddMember(squad.transform, 1, 1);
    }

    
}