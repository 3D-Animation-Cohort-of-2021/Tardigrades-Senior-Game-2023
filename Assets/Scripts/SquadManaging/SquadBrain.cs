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
    public int brainNumber = -1;
    public Elem squadType;

    private Coroutine activeSquad = null;

    void Start()
    {
        //thisSquadIsActive = false;
        squadController = GetComponent<CharacterController>();


        Populate(amountPerGroup);
    }
    
    public void WakeUp()
    {
        brainNumber = SquadManager.squads.Count-1;
        movementVector.SetSquadTotal(brainNumber + 1);
        ActivateSquad(brainNumber);
    }
    
    private void ActivateSquad(int squadNumber)
    {

        if(activeSquad != null)
        {
            StopCoroutine(activeSquad);
            activeSquad = null;
        }

        if (squadNumber == brainNumber)
        {
            activeSquad = StartCoroutine(ActiveSquad());
        }
    }

    public void ActivateSquad()
    {
        if (activeSquad != null)
        {
            StopCoroutine(activeSquad);
            activeSquad = null;
        }

        if (movementVector.squadNumber == brainNumber)
        {
            activeSquad = StartCoroutine(ActiveSquad());
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
            SquadManager parentManager = GetComponentInParent<SquadManager>();

            if(parentManager != null)
            {
                parentManager.ReceiveSquadFromChild(other);
            }
        }
    }

    public void Populate(int amountOfTards)
    {
        if (piggyPrefab != null)
        {
            for (int i = 0; i < amountOfTards; i++)
            {
            
                Vector3 newPos = RandomPointInRadius();
                GameObject newPiglet = Instantiate(piggyPrefab, newPos, Quaternion.identity);

                newPiglet.GetComponent<FollowPointBehaviour>().pointObject = gameObject;

                TardigradeBase pigBase = newPiglet.GetComponent<TardigradeBase>();
                if (pigBase.ConvertTardigrade(squadType))
                {
                    Destroy(pigBase);
                }
            
            }
        }


    }
    
    private Vector3 RandomPointInRadius() 
    {
        Vector3 currentPos = transform.position;
        return new Vector3((currentPos.x + Random.Range(-radius, radius)), currentPos.y, (currentPos.z + Random.Range(-radius, radius)));
    }
}
