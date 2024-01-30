using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

//Created by: Ethan Ware
//Purpose: This script is for controlling the Level box
[RequireComponent(typeof(Collider))]
[RequireComponent(typeof(Animator))]
public class EndBoxBehavior : MonoBehaviour
{
    public UnityEvent spawnEvent, finishEvent, controlsEnableEvent;
    public Boolean isEnd;
    public GameAction endLevel;
    public GameObject rallyPoint;
    private Animator boxAnimator;
    private GameObject playerCenter;
    public Horde_Info hordeBrain;

    private void Awake()
    {
        if (isEnd)
        {
            GetComponent<Animator>().SetTrigger("Open");
            //do end things
        }
        else
        {
            //do start things
            hordeBrain.gameRunning = true;
        }
    }

    public void MarkLevelComplete()
    {
        endLevel.raise();
    }

    public void SpawnEvent()
    {
        spawnEvent.Invoke();
    }

    public void DespawnEvent()
    {
        finishEvent.Invoke();
    }

    public void EnablePlayerControls()
    {
        controlsEnableEvent.Invoke();
    }

    public void TerminatePlayerHorde()
    {
        if(playerCenter==null)
            return;
        playerCenter.GetComponent<SquadManager>().TerminateHorde(DeathType.None);
    }

    private void OnTriggerEnter(Collider other)
    {
        if(!isEnd)
            return;
        if (other.TryGetComponent(out SquadManager sM))
        {
            playerCenter = sM.gameObject;
            finishEvent.Invoke();
            sM.RallyAtPoint(rallyPoint.transform.position);
        }
    }
}
