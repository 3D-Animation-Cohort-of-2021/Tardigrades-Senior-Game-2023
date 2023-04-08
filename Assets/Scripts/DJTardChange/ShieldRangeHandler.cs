using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ShieldRangeHandler : MonoBehaviour
{
    private WaterTardigrade parentTard;

    private void Start()
    {
        parentTard = GetComponentInParent<WaterTardigrade>();
    }

    private void OnTriggerEnter(Collider other)
    {
         if(other.TryGetComponent<TardigradeBase>(out TardigradeBase newTard))
         {
             parentTard.shieldableTards.Add(newTard);
         }
    }

    private void OnTriggerExit(Collider other)
    {
        if(other.TryGetComponent<TardigradeBase>(out TardigradeBase newTard))
        {
            parentTard.shieldableTards.Remove(newTard);
        }
    }
    
}
