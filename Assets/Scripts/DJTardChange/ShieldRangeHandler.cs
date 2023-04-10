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
             newTard.OnDestroy += RemoveTard;
         }
    }

    private void OnTriggerExit(Collider other)
    {
        if(other.TryGetComponent<TardigradeBase>(out TardigradeBase newTard))
        {
            parentTard.shieldableTards.Remove(newTard);
            newTard.OnDestroy -= RemoveTard;
        }
    }
    
    public void RemoveTard(TardigradeBase newTard)
    {
        parentTard.shieldableTards.Remove(newTard);
    }
    
}
