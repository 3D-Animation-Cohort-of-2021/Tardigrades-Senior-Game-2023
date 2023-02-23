using System.Collections.Generic;
using System.Linq;
using UnityEngine;
//Made By Parker Bennion
public class SquadManager : MonoBehaviour
{
    public GameObject BlankSquad;
    public GameObject parentObj;

    private List<GameObject> currentSquads;

    private void Start()
    {
        currentSquads = new List<GameObject>();
        currentSquads.Add(BlankSquad);
        currentSquads.Add(BlankSquad);
    }

    //adds a squad to the list
    public void InstanceNewSquad()
    {
        currentSquads.Add(BlankSquad);
        currentSquads.Last().transform.parent = parentObj.transform;
    }

    //takes a squad out of the list
    public void KillSquad(int targetSquad)
    {
        currentSquads.RemoveAt(targetSquad);
        Debug.Log(currentSquads);
    }
}
