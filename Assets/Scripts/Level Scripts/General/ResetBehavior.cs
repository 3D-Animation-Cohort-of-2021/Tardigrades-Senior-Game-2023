using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class ResetBehavior : MonoBehaviour, IReset
{
    public UnityEvent resetEvent;

    public bool readyToResetOnStart;
    
    public bool shouldReset { get; set; }

    private void Start()
    {
        shouldReset = readyToResetOnStart;
    }
    
    public void Reset()
    {
        if (shouldReset)
        {
            resetEvent.Invoke();
        }
    }
}
