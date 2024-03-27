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
    public UnityEvent spawnEvent, finishEvent, controlsEnableEvent, endOfSequenceEvent;
    public Boolean isEnd, startGameplay;
    public GameAction spawnMom, killMom, endLevel;
    public GameObject rallyPoint;
    private Animator boxAnimator;
    private GameObject playerCenter;
    public Horde_Info hordeBrain;
    public LevelData currentLevel, nextLevel;

    private void Awake()
    {
        if (isEnd)
        {
            GetComponent<Animator>().SetTrigger("Open");
            //do end things
        }
        else
        {
            if (!startGameplay)
                hordeBrain.gameRunning = false;
        }
    }

    public void MarkLevelComplete()
    {
        endLevel.raise();
        Debug.Log("Calling Menu");
        UpdateLevelDatas();
    }

    public void SpawnEvent()
    {
        spawnEvent.Invoke();
        if(!isEnd)
            spawnMom.raise();
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
        playerCenter.GetComponent<SquadManager>().TerminateHorde();
        killMom.raise();
    }

    private void OnTriggerEnter(Collider other)
    {
        if(!isEnd)
            return;
        if (other.TryGetComponent(out SquadManager sM))
        {
            playerCenter = sM.gameObject;
            finishEvent.Invoke();
            //sM.RallyAtPoint(rallyPoint.transform.position);
            sM.GetComponent<HordeMovement>().MoveToLocation(this.gameObject);
        }
    }

    public void UpdateLevelDatas()
    {
        currentLevel.levelComplete = true;
        if (nextLevel != null)
        {
            nextLevel.levelUnlocked = true;
        }
    }

    public void endOfSequence()
    {
        endOfSequenceEvent.Invoke();
    }
    
}
