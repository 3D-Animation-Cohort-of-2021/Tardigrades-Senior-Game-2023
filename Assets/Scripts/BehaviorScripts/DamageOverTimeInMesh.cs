using System.Collections;
using System.Collections.Generic;
using UnityEngine;
[RequireComponent(typeof(MeshCollider))]

public class DamageOverTimeInMesh : MonoBehaviour
{
    private MeshCollider _collider;
    public float damageIntervalTime, damagePerTick;
    private WaitForSeconds wfs;
    private Coroutine activeRoutine;
    public Elem type;
    public bool isRunning;
    public DeathType tardDeathType;
    private Vector3 boxCenter, boxHalfExtents, adjustedScale;
    private Collider[] colsInArea;
    private void Awake()
    {
        _collider = GetComponent<MeshCollider>();
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
            if(obj.TryGetComponent(out TardigradeBase tard))
                tard.Damage(damagePerTick,type, tardDeathType);
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
}