using System.Collections;
using UnityEngine;

public class ColdDamage : MonoBehaviour
{
    private float damageInterval = 1f;
    private bool isRunning;
    private WaitForSeconds wfs;
    
    private void OnTriggerEnter(Collider other)
    {
        StartDamageRoutine();
    }
    private void OnTriggerExit(Collider other)
    {
        StopDamageRoutine();
    }

    private void OnDisable()
    {
        StopDamageRoutine();
    }

    private void StartDamageRoutine()
    {
        if (!isRunning)
        {
            isRunning = true;
            StartCoroutine(DamageIntervalRoutine());
        }
    }
    
    private void StopDamageRoutine()
    {
        if (isRunning)
        {
            isRunning = false;
            StopCoroutine(DamageIntervalRoutine());
        }
    }
    
    private IEnumerator DamageIntervalRoutine()
    {
        while (isRunning)
        {
            
            yield return wfs;
        }
    }
}


