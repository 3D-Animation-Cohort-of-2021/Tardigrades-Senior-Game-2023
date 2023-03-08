using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Random = UnityEngine.Random;

public class SquadBrain : MonoBehaviour
{
    public SO_SquadData movementVector;
    public GameObject piggyPrefab;
    public int amountPerGroup;
    public int radius;
    private CharacterController squadController;
    private WaitForFixedUpdate wffu;
    public int brainNumber;
    public Elem squadType;
    public float radius;
    public SO_ObjList pigletFabs;

    public int brianNumber;
    void Start()
    {
        //thisSquadIsActive = false;
        squadController = GetComponent<CharacterController>();


        Populate(amountPerGroup);
    }
    
    public void WakeUp()
    {
        brainNumber = SquadManager.squads.Count-1;
        Debug.Log(brainNumber);
        //change to grow with squad
        ActivateSquad(brainNumber);
    }
    
    private void ActivateSquad(int squadNumber)
    {
        if (squadNumber == brainNumber)
        {
            StartCoroutine(ActiveSquad());
        }
    }

    public void ActivateSquad()
    {
        if (movementVector.squadNumber == brainNumber)
        {
            StartCoroutine(ActiveSquad());
        }
    }

    IEnumerator ActiveSquad()
     {
         while (brainNumber == movementVector.squadNumber)
         {
            if (movementVector != null)
            {

                squadController.Move(((movementVector.vectorThree) * Time.deltaTime * 10));

            }
             yield return wffu;
         }
     }

    private void OnTriggerEnter(Collider other)
    {
        if(gameObject.layer != LayerMask.NameToLayer("Squad") && other.gameObject.layer == LayerMask.NameToLayer("Squad"))
        {
            Debug.Log("Squad detected squad");
            SquadManager parentManager = GetComponentInParent<SquadManager>();

            if(parentManager != null)
            {
                parentManager.ReceiveSquadFromChild(other);
            }
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
