using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

//Created by: Ethan Ware
//Purpose: This script is for controlling the Level box
[RequireComponent(typeof(Collider))]
[RequireComponent(typeof(Animator))]
public class LabBoxBehavior : MonoBehaviour
{
    public UnityEvent initializeEvent, spawnEvent, controlsEnableEvent, fadeOutEvent, menuCallEvent;
    public Boolean isEnd;
    public GameAction menuCall, loadLevel;
    public GameObject rallyPoint;
    private Animator boxAnimator;
    private GameObject playerCenter;
    public Horde_Info hordeBrain;
    public LevelData levelData;
    private bool boxAvailable;

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
            hordeBrain.gameRunning = false;
        }
    }

    private void Start()
    {
        Initialize();
    }

    public void Initialize()
    {
        boxAvailable = levelData.levelUnlocked;
        initializeEvent.Invoke();
    }

    public void MarkLevelComplete()
    {
        Debug.Log("Loading");
    }

    public void SpawnEvent()
    {
        spawnEvent.Invoke();
    }

    public void DespawnEvent()
    {
        fadeOutEvent.Invoke();
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
    }

    private void OnTriggerEnter(Collider other)
    {
        if(!isEnd||!boxAvailable)
            return;
        if (other.TryGetComponent(out SquadManager sM))
        {
            playerCenter = sM.gameObject;
            menuCall.raise();
            menuCallEvent.Invoke();
        }
    }

    public void GrabHordeAndClose()
    {
        StartCoroutine(GrabHordeAndCloseRoutine());
    }
    private IEnumerator GrabHordeAndCloseRoutine()
    {
        playerCenter.GetComponent<SquadManager>().RallyAtPoint(rallyPoint.transform.position);
        yield return new WaitForSeconds(1.5f);
        GetComponent<Animator>().SetTrigger("Close");
        yield return new WaitForSeconds(1.5f);
        DespawnEvent();
        yield return new WaitForSeconds(2);
        Debug.Log("Loading Scene");
        loadLevel.raise();
    }
    
}
