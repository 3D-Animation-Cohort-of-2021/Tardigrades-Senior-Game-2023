using System;
using System.Collections;
using UnityEngine;
using UnityEngine.Events;

[RequireComponent(typeof(CharacterController))]
public class SquadBrain : MonoBehaviour
{
    public SO_Vector3 movementVector;
    private CharacterController thisSquadsController;
    private WaitForFixedUpdate wffu;
    
    public int brianNumber;
    void Start()
    {
        //thisSquadIsActive = false;
        thisSquadsController = GetComponent<CharacterController>();
        WakeUp();
    }
    
    private void WakeUp()
    {
        brianNumber = SquadManager.squads[0].SquadID;
        ActivateSquad(brianNumber);
    }
    
    public void ActivateSquad(int squadNumber)
    {
        if (squadNumber == brianNumber)
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
}
