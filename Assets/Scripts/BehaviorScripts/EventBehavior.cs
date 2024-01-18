using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class EventBehavior : MonoBehaviour
{
    public UnityEvent objectEvent;
    public float enabledDelay;
    public bool isDelayed, runOnEnabled;

    public void RunEvent(float delay)
    {
        if(isDelayed)
        {
            StartCoroutine(Countdown(delay));
        }
        else
        {
            objectEvent.Invoke();
        }
    }

    private void OnEnable()
    {
        if(runOnEnabled)
            RunEvent(enabledDelay);
    }

    private IEnumerator Countdown(float delay)
    {
        yield return new WaitForSeconds(delay);
        objectEvent.Invoke();
    }
    
    
}
