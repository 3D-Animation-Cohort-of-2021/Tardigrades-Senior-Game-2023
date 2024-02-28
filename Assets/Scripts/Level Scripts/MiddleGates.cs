using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class MiddleGates : MonoBehaviour
{
    public bool leftGate;
    public bool rightGate;
    
    public UnityEvent gateEvent;
    public void CheckGates()
    {
        if (leftGate && rightGate)
        {
            gateEvent.Invoke();
        }
    }

    public void ActivateLeftGate()
    {
        leftGate = true;
        CheckGates();
    }

    public void ActivateRightGate()
    {
        rightGate = true;
        CheckGates();
    }
}
