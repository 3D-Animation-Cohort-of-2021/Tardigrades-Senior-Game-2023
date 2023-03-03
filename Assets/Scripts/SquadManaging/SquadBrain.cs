using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Random = UnityEngine.Random;

[RequireComponent(typeof(CharacterController))]
public class SquadBrain : MonoBehaviour
{
    public SO_SquadData movementVector;
    private CharacterController thisSquadsController;
    private WaitForFixedUpdate wffu;
    public Elem squadType;
    public float radius;
    public SO_ObjList pigletFabs;

    public int brianNumber;
    void Start()
    {
        //thisSquadIsActive = false;
        thisSquadsController = GetComponent<CharacterController>();
        WakeUp();
    }
    
    private void WakeUp()
    {
        brianNumber = SquadManager.squads.Count-1;
        //change to grow with squad
        ActivateSquad(brianNumber);
        Populate(4);
    }
    
    public void ActivateSquad(int squadNumber)
    {
        if (squadNumber == brianNumber)
        {
            StartCoroutine(ActiveSquad());
        }
    }
    public void ActivateSquad()
    {
        if (movementVector.squadNumber == brianNumber)
        {
            StartCoroutine(ActiveSquad());
        }
    }

    IEnumerator ActiveSquad()
     {
         while (brianNumber == movementVector.squadNumber)
         {
             thisSquadsController.Move((movementVector.vectorThree * (Time.deltaTime * 10)));
             yield return wffu;
         }
     }

    public void Populate(int amountOfTards)
    {
        GameObject tardInitial = null;
        foreach (GameObject prefab in pigletFabs.objectGames)
        {
            if (prefab.GetComponent<TardigradeBase>().GetElementType() == squadType)
            {
                tardInitial = prefab;
            }
        }
        if (tardInitial != null)
        {
            for (int i = 0; i < amountOfTards; i++)
            {
            
                Vector3 newPos = RandomPointInRadius();
                GameObject newPiglet = Instantiate(tardInitial, newPos, Quaternion.identity);
                newPiglet.GetComponent<FollowPointBehaviour>().pointObject = gameObject;
            
            }
        }


    }
    
    private Vector3 RandomPointInRadius() 
    {
        Vector3 currentPos = transform.position;
        return new Vector3((currentPos.x + Random.Range(-radius, radius)), currentPos.y, (currentPos.z + Random.Range(-radius, radius)));
    }
}
