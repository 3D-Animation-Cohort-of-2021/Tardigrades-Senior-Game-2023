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

    private Formation formation = Formation.Cluster;
    private float spacing;
    private List<CustomTransform> formationPositions;
    
    [SerializeField]private List<TardigradeBase> myTards;

    private Coroutine activeSquad = null;

    private void Awake()
    {
        navMeshAgent = GetComponent<NavMeshAgent>();
        formationPositions = new List<CustomTransform>();
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
            
                Vector3 newPos = transform.position + RandomPointInRadius(1f);
                GameObject newPiglet = Instantiate(piggyPrefab, newPos, Quaternion.identity);

                TardigradeBase pigBase = newPiglet.GetComponent<TardigradeBase>();
                TardigradeBase newBase = pigBase.ConvertTardigrade(squadType);

                if (newBase != null)
                {
                    myTards.Remove(pigBase);

                    Destroy(pigBase);

                    pigBase = newBase;
                }

                AddToSquad(pigBase);
            
            }
        }


    }

    public void TeleportSquad(Vector3 dest)
    {
        navMeshAgent.Warp(dest + Vector3.up * navMeshAgent.baseOffset);
    }
    
    private Vector3 RandomPointInRadius(float clusterRadius) 
    {
        Vector3 currentPos = transform.position;
        return new Vector3((Random.Range(-clusterRadius, clusterRadius)), 0, (Random.Range(-clusterRadius, clusterRadius)));
    }

    /// <summary>
    /// Adds a tardigrade to this squad
    /// </summary>
    public void AddToSquad(TardigradeBase newTard)
    {
        CustomTransform newTransform = new CustomTransform(transform, Vector3.zero, Quaternion.identity, Vector3.one);
        formationPositions.Add(newTransform);
        myTards.Add(newTard);
        newTard.GetComponent<FollowPointBehaviour>().pointObject = newTransform;

        UpdateFormation(formation, true);
    }
    /// <summary>
    /// Removes a tardigrade from this squad
    /// </summary>
    public void RemoveFromSquad(TardigradeBase oldTard)
    {
        int index = myTards.IndexOf(oldTard);
        myTards.RemoveAt(index);
        formationPositions.RemoveAt(index);
        oldTard.GetComponent<FollowPointBehaviour>().pointObject = null;

        if(myTards.Count < 1) 
        {
            Destroy(gameObject);
        }
        else
        {
            UpdateFormation(formation, true);
        }
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

    public void UpdateFormation(Formation newFormation)
    {
        UpdateFormation(newFormation, false);
    }
        private void UpdateFormation(Formation newFormation, bool formationOverride)
    {
        if (!formationOverride && formation == newFormation)
        {
            return;
        }

        formation = newFormation;

        if (myTards != null)
        {
            switch(formation)
            {
                case Formation.Cluster:
                    ClusterFormation();
                    break;
                case Formation.Line:
                    LineFormation();
                    break;
                case Formation.Circle:
                    CircleFormation();
                    break;
                case Formation.Wedge:
                    WedgeFormation();
                    break;
            }
        }
    }

    private void ClusterFormation()
    {
        float clusterRadius = Mathf.Log((float)formationPositions.Count, 4);
        for (int i = 0; i < formationPositions.Count; i++)
        {

            formationPositions[i].Position = RandomPointInRadius(clusterRadius);
        }
    }

    private void LineFormation()
    {
        for (int i = 0; i < formationPositions.Count; i++)
        {
            
        }
    }

    private void CircleFormation()
    {
        for (int i = 0; i < formationPositions.Count; i++)
        {

        }
    }

    private void WedgeFormation()
    {
        for (int i = 0; i < formationPositions.Count; i++)
        {

        }
    }
}

public enum Formation
{
    Cluster,
    Line,
    Circle,
    Wedge
}
