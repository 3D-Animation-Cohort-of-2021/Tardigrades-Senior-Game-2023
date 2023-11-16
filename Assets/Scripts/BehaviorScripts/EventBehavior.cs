using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class EventBehavior : MonoBehaviour
{
    public UnityEvent objectEvent;
    public float delay;
    public bool isDelayed, runOnEnabled;

    public void RunEvent()
    {
        if(isDelayed)
        {
            StartCoroutine(Countdown());
        }
        else
        {
            objectEvent.Invoke();
        }
    }

    private void OnEnable()
    {
        if(runOnEnabled)
            RunEvent();
    }

    private IEnumerator Countdown()
    {
        yield return new WaitForSeconds(delay);
        objectEvent.Invoke();
    }
    
    
}
