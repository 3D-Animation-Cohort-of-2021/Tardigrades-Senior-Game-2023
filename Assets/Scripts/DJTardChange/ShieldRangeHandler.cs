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
        TardigradeBase newTard = other.GetComponent<TardigradeBase>();
        if (newTard == null) return;
        parentTard.shieldableTards.Add(newTard);
    }

    private void OnTriggerExit(Collider other)
    {
        TardigradeBase newTard = other.GetComponent<TardigradeBase>();
        if (newTard == null) return;
        parentTard.shieldableTards.Remove(newTard);
    }
}
