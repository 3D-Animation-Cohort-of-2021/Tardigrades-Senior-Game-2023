using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.VFX;

[RequireComponent(typeof(Collider))]
public class ElementalFlameDeposit : MonoBehaviour
{
    public UnityEvent depositGrowEvent, mismatchEvent, fullEvent;
    public VisualEffect fullFlame;
    public Elem currentElem;
    public int flameCapacity, currentFlames;
    public bool mustMatchType;
    // Start is called before the first frame update

    private void Awake()
    {
        GetComponent<Collider>().isTrigger = true;
        currentFlames = 0;
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.TryGetComponent(out ElementalFlameCore flameCore))
        {
            ElementalFlame flame = flameCore.parentFlameObj;
            Debug.Log("flame acquired");
            flame.ResetToStart();
            if (flame.flameType != currentElem && mustMatchType)
            {
                mismatchEvent.Invoke();
                return;
            }
            currentFlames++;
            if(currentFlames>=flameCapacity)
            {
                fullEvent.Invoke();
                if(fullFlame!=null)
                    fullFlame.Play();
            }
            else
                depositGrowEvent.Invoke();
            
        }
    }
}
