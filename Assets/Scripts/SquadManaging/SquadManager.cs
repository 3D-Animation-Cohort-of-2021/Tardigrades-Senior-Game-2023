using System.Collections;
using System.Collections.Generic;
using Unity.VisualScripting;
using UnityEngine;

//Made By Parker Bennion
public class SquadManager : MonoBehaviour
{
    public GameObject parentObj;
    public static List<Squad> squads = new List<Squad>();
    public GameObject squadPrefab;
    private Vector3 squadInstanceTempVector;

    public int squadIDGiver;
    //public Slider squadSlider;

    private void Start()
    {
        //currentSquads.Add(PossibleSquads[0]);
        //currentSquads.Last().transform.parent = parentObj.transform;
        squads = new List<Squad>();

        squadIDGiver = 0;

        StartCoroutine(SetupChildren());

    }

    IEnumerator SetupChildren()
    {
        yield return new WaitForFixedUpdate();
        for (int i = 0; i < transform.childCount; i++)
        {
            GameObject childSquad = transform.GetChild(i).gameObject;
            SquadBrain childBrain = childSquad.GetComponent<SquadBrain>();
            squads.Add(new Squad() { SquadName = $"Poo Poo Pee Pee {squads.Count}", SquadID = squads.Count, SquadObj = childSquad });

            childBrain.WakeUp();
            squadIDGiver++;
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
            Debug.Log("Collided with squad");

            tempObject.layer = LayerMask.NameToLayer("Center");

            SquadBrain childBrain = tempObject.GetComponent<SquadBrain>();
            squads.Add(new Squad(){SquadName = $"Poo Poo Pee Pee {squads.Count}", SquadID = squads.Count , SquadObj = tempObject });

            tempObject.transform.parent = transform;

            childBrain.WakeUp();
            squadIDGiver++;
        }
    }
}
