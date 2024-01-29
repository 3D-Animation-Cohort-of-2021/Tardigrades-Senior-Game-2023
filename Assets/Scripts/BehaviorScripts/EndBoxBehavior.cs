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
    public UnityEvent spawnEvent, endEvent, controlsEnableEvent;
    public Boolean isEnd;
    public GameAction endLevel;
    public GameObject rallyPoint;
    private Animator boxAnimator;

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
        }
    }

    private void Start()
    {
        
    }

    public void SpawnEvent()
    {
        spawnEvent.Invoke();
    }

    public void DespawnEvent()
    {
        endEvent.Invoke();
    }

    public void EnablePlayerControls()
    {
        controlsEnableEvent.Invoke();
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.TryGetComponent(out PlayerControl PC))
        {
            //tell horde to move to rally point
        }
    }
}
