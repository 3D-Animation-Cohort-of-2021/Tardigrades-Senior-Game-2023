using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

[RequireComponent(typeof(Collider))]
public class VolumeEventBehavior : MonoBehaviour, IReset
{
    public UnityEvent enterVolumeEvent, exitVolumeEvent;
    public bool triggerOnce;
    private bool alreadyTriggered;
    
    private void Awake()
    {
        GetComponent<Collider>().isTrigger = true;
        shouldReset = true;
    }

    private void OnTriggerEnter(Collider other)
    {
        if(other.TryGetComponent(out PlayerControl player))
        {
            Debug.Log("Detected Player");
            if(triggerOnce && alreadyTriggered)
                return;
            else
            {
                Debug.Log("invoking Event");
                enterVolumeEvent.Invoke();
                alreadyTriggered = true;
            }
            
        }
        
    }

    private void OnTriggerExit(Collider other)
    {
        if(other.TryGetComponent(out PlayerControl player))
            exitVolumeEvent.Invoke();
    }

    public bool shouldReset { get; set; }
    public void Reset()
    {
        if (shouldReset)
            alreadyTriggered = false;
    }
}
