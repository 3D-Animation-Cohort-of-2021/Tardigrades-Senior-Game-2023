using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

[RequireComponent(typeof(BoxCollider))]

public class BrambleOverTime : MonoBehaviour
{
    private BoxCollider _collider;
    public float damageIntervalTime, damagePerTick;
    private WaitForSeconds wfs;
    private Coroutine activeRoutine;
    public Elem type;
    public bool isRunning;
    public DeathType tardDeathType;
    private Vector3 boxCenter, boxHalfExtents, adjustedScale;
    private Collider[] colsInArea;
    public UnityEvent destroyEvent;
    private void Awake()
    {
        _collider = GetComponent<BoxCollider>();
        _collider.isTrigger = true;
        wfs = new WaitForSeconds(damageIntervalTime);
        isRunning = true;
        boxHalfExtents = _collider.bounds.extents;
        boxCenter = _collider.bounds.center;
        adjustedScale = transform.lossyScale;
    }

    private void Start()
    {
        activeRoutine = StartCoroutine(RunningDamageRoutine());
    }

    private void IntervalDamage()
    {
        boxCenter = _collider.bounds.center;
        colsInArea = Physics.OverlapBox(boxCenter, boxHalfExtents);
        foreach (Collider obj in colsInArea)
        {
            if(obj.TryGetComponent(out StoneTardigrade tard))
            {
                if (tard.diamond)
                {
                    isRunning = false;
                    destroyEvent.Invoke();
                }
            }
            else if (obj.TryGetComponent(out TardigradeBase tardBase))
            {
                tardBase.Damage(damagePerTick, type, tardDeathType);
            }
        }
    }

    private IEnumerator RunningDamageRoutine()
    {
        while (isRunning)
        {
            IntervalDamage();
            yield return wfs;
        }
    }

    public void StopDamage()
    {
        isRunning = false;
    }
}