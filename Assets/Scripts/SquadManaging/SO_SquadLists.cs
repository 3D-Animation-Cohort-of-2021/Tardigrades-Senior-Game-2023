using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
[CreateAssetMenu]
public class SO_SquadLists : ScriptableObject
{
    private List<GameObject> currentSquads;
    public List<GameObject> possibleSquads;
    //public GameObject parentObj;
    
    //creates the squads in scene based on a prefab.
    public void CreateSquadStructure()
    {
        for (int i = 0; i < possibleSquads.Count; i++)
        {
            Instantiate(possibleSquads[i]);
        }
    }

    //functions to add squads to the current usable list.
    public void InstanceNewSquad(GameObject newSquad)
    {
        currentSquads.Add(newSquad);
        possibleSquads.Add(newSquad);
        //newSquad.transform.parent = parentObj.transform;
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
}
