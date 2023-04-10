using System.Collections.Generic;
using UnityEngine;

public class ShieldRangeHandler : MonoBehaviour
{
    private WaterTardigrade parentTard;
    private List<TardigradeBase> tardList;

    private void Start()
    {
        parentTard = GetComponentInParent<WaterTardigrade>();
        tardList = parentTard.shieldableTards;
    }

    private void OnTriggerEnter(Collider other)
    {
         if(other.TryGetComponent<TardigradeBase>(out TardigradeBase newTard))
         {
             tardList.Add(newTard);
             newTard.OnDestroy += RemoveTard;
             UpdateList();
         }
    }

    private void OnTriggerExit(Collider other)
    {
        if(other.TryGetComponent<TardigradeBase>(out TardigradeBase newTard))
        {
            tardList.Remove(newTard);
            newTard.OnDestroy -= RemoveTard;
            UpdateList();
        }
    }
    
    public void RemoveTard(TardigradeBase newTard)
    {
        tardList.Remove(newTard);
        UpdateList();
    }

    protected void UpdateList()
    {
        parentTard.shieldableTards = tardList;
    }
    
}
