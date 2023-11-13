using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;
[RequireComponent(typeof(Collider))]
public class ElementalFlameDeposit : MonoBehaviour
{
    public UnityEvent deposiGrowEvent, fullEvent;
    public Elem currentElem;
    public int flameCapacity, currentFlames;
    // Start is called before the first frame update

    private void Awake()
    {
        GetComponent<Collider>().isTrigger = true;
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.TryGetComponent(out ElementalFlame flame))
        {
            currentFlames++;
            deposiGrowEvent.Invoke();
            //check if full
        }
    }
}
