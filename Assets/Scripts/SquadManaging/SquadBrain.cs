using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;
using Random = UnityEngine.Random;

public class SquadBrain : MonoBehaviour
{
    public SO_SquadData movementVector;
    public GameObject piggyPrefab;
    public int amountPerGroup;
    public int radius;
    private NavMeshAgent navMeshAgent;
    private WaitForFixedUpdate wffu;
    public int brainNumber = -1;
    public Elem squadType;

    private Coroutine activeSquad = null;

    private void Awake()
    {
        navMeshAgent = GetComponent<NavMeshAgent>();
    }

    void Start()
    {
        //thisSquadIsActive = false;
        
        navMeshAgent.speed = 10f;
        Populate(amountPerGroup);
    }

    private void FixedUpdate()
    {
        if (transform.parent != null && (Vector3.Distance(transform.position, transform.parent.position) >= radius))
        {
            navMeshAgent.SetDestination(transform.parent.position + Vector3.ClampMagnitude((transform.position - transform.parent.position), radius * 0.95f));
        }

        if(transform.parent != null && Vector3.Distance(transform.position, transform.parent.position) <= radius)
        {
            navMeshAgent.ResetPath();
        }
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
                    navMeshAgent.Move(movementVector.vectorThree * Time.deltaTime * 10);

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

    public void TeleportSquad(Vector3 dest)
    {
        navMeshAgent.Warp(dest + Vector3.up * navMeshAgent.baseOffset);
    }
    
    private Vector3 RandomPointInRadius() 
    {
        Vector3 currentPos = transform.position;
        return new Vector3((currentPos.x + Random.Range(-radius, radius)), currentPos.y, (currentPos.z + Random.Range(-radius, radius)));
    }
}
