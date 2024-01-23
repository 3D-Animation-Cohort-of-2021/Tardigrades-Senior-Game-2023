using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class DamageBurst : MonoBehaviour
{
    public Elem damageType;
    public DeathType tardDeathType;
    public float damageAmount, damageInterval, damageFrequency;
    private float numTicks;
    private Coroutine currentRoutine;
    private WaitForSeconds wfDamage, wfNext, wfTick;
    public UnityEvent beginDamageDisplayEvent;



    private Vector3 sphereCenter, adjustedScale;
    private SphereCollider _collider;
    private float sphereRadius, currentTick;
    private Collider[] colsInArea;

    private void Awake()
    {
        wfDamage = new WaitForSeconds(2);
        wfNext = new WaitForSeconds(damageInterval);
        wfTick = new WaitForSeconds(damageFrequency);
        numTicks = 2 / damageFrequency;
        _collider = GetComponent<SphereCollider>();
        sphereCenter = _collider.bounds.center;
        adjustedScale = transform.lossyScale;
        sphereRadius = _collider.radius * Mathf.Max(adjustedScale.x, adjustedScale.y, adjustedScale.z);
    }

    private void Start()
    {
        StartRoutines();
    }

    private IEnumerator WaitPeriod()
    {
        Debug.Log("Start Waiting");
        yield return wfNext;
        currentRoutine = StartCoroutine(DamagePeriod());
    }

    private IEnumerator DamagePeriod()
    {
        beginDamageDisplayEvent.Invoke();
        Debug.Log("getReady");
        yield return wfDamage;
        Debug.Log("Damage!");
        currentTick = 0;
        while (currentTick < numTicks)
        {
            yield return wfTick;
            IntervalDamage();
            currentTick += 1;
        }

        currentRoutine = StartCoroutine(WaitPeriod());
    }
    private void IntervalDamage()
    {
        colsInArea = Physics.OverlapSphere(sphereCenter, sphereRadius);
        foreach (Collider obj in colsInArea)
        {
            if(obj.TryGetComponent(out TardigradeBase tard))
                tard.Damage(damageAmount,damageType,tardDeathType);
        }
    }

    public void StartRoutines()
    {
        currentRoutine = StartCoroutine(DamagePeriod());
    }

}
