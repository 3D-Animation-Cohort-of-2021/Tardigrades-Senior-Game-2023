using System;
using System.Collections.Generic;
using Unity.VisualScripting;
using UnityEngine;
using UnityEngine.UIElements;

//Made By Parker Bennion
public class SquadManager : MonoBehaviour
{
    public List<GameObject> possibleSquads;
    public GameObject parentObj;
    private List<GameObject> currentSquads;
    public static List<Squad> squads = new List<Squad>();
    public GameObject squadPrefab;

    public int squadIDGiver;
    //public Slider squadSlider;

    private void Start()
    {
        //currentSquads.Add(PossibleSquads[0]);
        //currentSquads.Last().transform.parent = parentObj.transform;
        squads = new List<Squad>();
        squadIDGiver = 0;

    }

    private void OnTriggerEnter(Collider other)
    {
        GameObject tempObject;
        if (other.CompareTag("SQUAD"))
        {
            squads.Add(new Squad(){SquadName = other.name, SquadID = squads.Count , SquadObj = other.gameObject});
            tempObject = other.gameObject;
            InstanceNewSquad(tempObject);
        }
    }
    
    public void InstanceNewSquad(GameObject newSquad)
    {
        Instantiate(squadPrefab, parentObj.transform);
        //create squad from prefab
        //newSquad.transform.parent = parentObj.transform;
        Debug.Log(squads[squadIDGiver].SquadName + " Name");
        Debug.Log(squads[squadIDGiver].SquadID + " ID");
        Debug.Log(squads[squadIDGiver].SquadObj + " GameObject");
        squadIDGiver++;
    }

    public void InstanceNewSquad(int targetSquad)
    {
        currentSquads.Add(possibleSquads[targetSquad]);
    }

    


    //takes a squad out of the list based on intager
    public void KillSquad(int targetSquad)
    {
        currentSquads.RemoveAt(targetSquad);
    }
    //takes a squad out of the list based on specific squad
    public void KillSquad(GameObject targetSquad)
    {
        currentSquads.Remove(targetSquad);
    }
    //takes all squads out of list when not specified
    public void ClearSquad()
    {
        currentSquads.Clear();
    }
    
    public void CreateSquadStructure()
    {
        for (int i = 0; i < possibleSquads.Count; i++)
        {
            Instantiate(possibleSquads[i]);
        }
    }
}
