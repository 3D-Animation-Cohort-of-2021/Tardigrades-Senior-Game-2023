using System.Collections.Generic;
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
    
    //instances the new squad as a child of the players certer.
    public void InstanceNewSquad(GameObject newSquad)
    {
        Instantiate(squadPrefab, squadInstanceTempVector, Quaternion.identity, parentObj.transform);
        //Debug.Log(squads[squadIDGiver].SquadName + " Name");
        //Debug.Log(squads[squadIDGiver].SquadID + " ID");
        //Debug.Log(squads[squadIDGiver].SquadObj + " GameObject");
        squadIDGiver++;
    }
}
