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
    private NavMeshAgent navMeshAgent;
    private WaitForFixedUpdate wffu;
    public int brainNumber = -1;
    public Elem squadType;
    public float radius;
    
    [SerializeField]private List<TardigradeBase> myTards;

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
        brainNumber = SquadManager.squads[SquadManager.squads.Count - 1].SquadID;
        
        if (squadType != Elem.Neutral)
        {
            movementVector.IncrementSquadTotal();
            ActivateSquad();
        }
    }

    private void ActivateSquad(int squadNumber)
    {

        if(activeSquad != null)
        {
            StopCoroutine(activeSquad);
            activeSquad = null;
        }

        if (movementVector.squadNumber == squadNumber && squadType != Elem.Neutral)
        {
            activeSquad = StartCoroutine(ActiveSquad());
            foreach (TardigradeBase tard in myTards)
            {
                ChangeHighlight(tard, true);
            }
        }
        else
        {
            foreach (TardigradeBase tard in myTards)
            {
                ChangeHighlight(tard, false);
            }
        }
    }

    public void ActivateSquad()
    {
        if (activeSquad != null)
        {
            StopCoroutine(activeSquad);
            activeSquad = null;
        }

        if (movementVector.squadNumber == brainNumber && squadType != Elem.Neutral )
        {
            activeSquad = StartCoroutine(ActiveSquad());

            //Grabs new selection and Highlights them
            foreach (TardigradeBase tard in myTards)
            {
                ChangeHighlight(tard, true);
            }
        }
        else
        {
            foreach (TardigradeBase tard in myTards)
            {
                ChangeHighlight(tard, false);
            }
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
         //Turns old highlights off and clears the old selection
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

                TardigradeBase pigBase = newPiglet.GetComponent<TardigradeBase>();
                if (pigBase.ConvertTardigrade(squadType))
                {
                    myTards.Remove(pigBase);
                    pigBase.enabled = false;
                    Destroy(pigBase);
                    TardigradeBase[] bases = newPiglet.GetComponents<TardigradeBase>();

                    foreach(TardigradeBase tBase in bases)
                    {
                        if (tBase.enabled)
                        {
                            pigBase = tBase;
                        }
                    }
                }
                if (pigBase != null)
                {
                    AddToSquad(pigBase);
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

    /// <summary>
    /// Adds a tardigrade to this squad
    /// </summary>
    public void AddToSquad(TardigradeBase newTard)
    {
        myTards.Add(newTard);
        newTard.GetComponent<FollowPointBehaviour>().pointObject = gameObject;
    }
    /// <summary>
    /// Removes a tardigrade from this squad
    /// </summary>
    public void RemoveFromSquad(TardigradeBase oldTard)
    {
        myTards.Remove(oldTard);
        oldTard.GetComponent<FollowPointBehaviour>().pointObject = null;
    }
    
    
    /// <summary>
    /// Changes highlight shader material visibility
    /// </summary>
    /// <param name="shouldHighlight">Should the tardigrade be highlighted or unhighighted</param>
    public void ChangeHighlight(TardigradeBase tard, bool shouldHighlight)
    {
        float thickness = 0f;

        if (shouldHighlight)
        {
            thickness = 0.1f;
        }
        
        Material[] mats = tard.GetComponent<Renderer>().materials;
        foreach (Material mat in mats)
        {
            if (mat.name =="HighlightMat (Instance)")
            {
                mat.SetFloat("_Highlight_Thickness", thickness);
            }
        }
    }

    public void TardsUsePrimaryAbility()
    {
        //check and track cooldown here
        foreach (TardigradeBase tard in myTards)
        {
            tard.PrimaryAbility();   
        }
    }

    public List<TardigradeBase> GetTards()
    {
        return myTards;
    }

    public bool IsActive()
    {
        if(activeSquad != null)
        {
            return true;
        }

        return false;
    }
}
