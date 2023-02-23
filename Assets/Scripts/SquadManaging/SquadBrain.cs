using System;
using System.Collections;
using UnityEngine;
[RequireComponent(typeof(CharacterController))]
public class SquadBrain : MonoBehaviour
{
    public GameObject playerCenter;
    public SO_Vector3 movementVector;
    private CharacterController thisSquadsController;
    private WaitForFixedUpdate wffu;
    
    public bool thisSquadIsActive;
    void Start()
    {
        //thisSquadIsActive = false;
        thisSquadsController = GetComponent<CharacterController>();
    }

    public void ActivateSquad()
    {
        if (!thisSquadIsActive)
        {
            transform.position = (playerCenter.transform.position + new Vector3(5, 0, 5)); // why wont this move the squad????
            transform.parent = playerCenter.transform;
            thisSquadIsActive = true;
            StartCoroutine(ActiveSquad());
        }
    }

    public void DisactivateSquad()
    {
        transform.parent = null;
        thisSquadIsActive = false;
    }

     IEnumerator ActiveSquad()
     {
         while (thisSquadIsActive)
         {
             
             thisSquadsController.Move((movementVector.vectorThree * (Time.deltaTime * 10)));
             yield return wffu;
         }

         thisSquadIsActive = false;
     }

     private void Update()
     {
         if (Input.GetKeyUp(KeyCode.I))
         {
             ActivateSquad();
         }
         if (Input.GetKeyUp(KeyCode.K))
         {
             DisactivateSquad();
         }
     }
}
