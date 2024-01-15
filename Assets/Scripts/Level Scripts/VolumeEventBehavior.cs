using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

[RequireComponent(typeof(Collider))]
public class VolumeEventBehavior : MonoBehaviour
{
    public UnityEvent enterVolumeEvent, exitVolumeEvent;
    private void Awake()
    {
        GetComponent<Collider>().isTrigger = true;
    }

    private void OnTriggerEnter(Collider other)
    {
        if(other.TryGetComponent(out PlayerControl player))
            enterVolumeEvent.Invoke();
        
    }

    private void OnTriggerExit(Collider other)
    {
        if(other.TryGetComponent(out PlayerControl player))
            exitVolumeEvent.Invoke();
    }
}
