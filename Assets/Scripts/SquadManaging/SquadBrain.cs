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
    
    [SerializeField]private List<TardigradeBase> myTards;

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
            //Grabs new selection and Highlights them
            foreach (TardigradeBase tard in myTards)
            {
                ChangeHighlight(tard, true);
            }
        }
    }
    public void ActivateSquad()
    {
        if (movementVector.squadNumber == brianNumber)
        {
            StartCoroutine(ActiveSquad());
            //Grabs new selection and Highlights them
            foreach (TardigradeBase tard in myTards)
            {
                ChangeHighlight(tard, true);
            }
        }
    }

    IEnumerator ActiveSquad()
     {
         while (brianNumber == movementVector.squadNumber)
         {
             thisSquadsController.Move((movementVector.vectorThree * (Time.deltaTime * 10)));
             yield return wffu;
         }
         //Turns old highlights off and clears the old selection
         foreach (TardigradeBase tard in myTards)
         {
             ChangeHighlight(tard,false);
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
                AddToSquad(newPiglet.GetComponent<TardigradeBase>());
            
            }
        }


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
        if (shouldHighlight) thickness = 0.1f;
        
        Material[] mats = tard.GetComponent<Renderer>().materials;
        foreach (Material mat in mats)
        {
            if (mat.name =="HighlightMat (Instance)")
            {
                mat.SetFloat("_Highlight_Thickness", thickness);
            }
        }
    }

    public List<TardigradeBase> GetTards()
    {
        return myTards;
    }
}
