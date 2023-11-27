using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;
[RequireComponent(typeof(Collider))]
public class ElementalFlameDeposit : MonoBehaviour
{
    public UnityEvent depositGrowEvent, fullEvent;
    public Elem currentElem;
    public int flameCapacity, currentFlames;
    // Start is called before the first frame update

    private void Awake()
    {
        GetComponent<Collider>().isTrigger = true;
        currentFlames = 0;
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.TryGetComponent(out ElementalFlame flame))
        {
            currentFlames++;
            flame.ResetToStart();
            if(currentFlames>=flameCapacity)
                fullEvent.Invoke();
            else
                depositGrowEvent.Invoke();
        }
    }
}
