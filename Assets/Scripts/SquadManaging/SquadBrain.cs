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

    public bool thisSquadIsActive;
    void Start()
    {
        //thisSquadIsActive = false;
        thisSquadsController = GetComponent<CharacterController>();
        thisSquadIsActive = false;
    }
    
    private void OnTriggerEnter(Collider other)
    {
        Debug.Log("collisoin");
        if (other.CompareTag("Player"))
        {
            thisSquadIsActive = true;
            WakeUp();
            Debug.Log("awake");
        }
    }

    private void WakeUp()
    {
        brianNumber = SquadManager.squads[0].SquadID;
        ActivateSquad(brianNumber);
    }
    
    
    public void ActivateSquad(int squadNumber)
    {
        if (!thisSquadIsActive && squadNumber == brianNumber)
        {
            thisSquadIsActive = true;
            StartCoroutine(ActiveSquad());
        }
    }

    

    IEnumerator ActiveSquad()
     {
         while (thisSquadIsActive)
         {
             thisSquadsController.Move((movementVector.vectorThree * (Time.deltaTime * 10)));
             yield return wffu;
         }
     }
    
    public void DeactivateSquad(int squadNumber)
    {
        if (squadNumber != brianNumber)
        {
            thisSquadIsActive = false;
        }
    }
}
