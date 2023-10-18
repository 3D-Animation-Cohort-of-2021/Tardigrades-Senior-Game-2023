using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
[RequireComponent(typeof(BoxCollider))]

public class DamageOverTimeInVolume : MonoBehaviour
{
   private BoxCollider _collider;
   public float damageIntervalTime, damagePerTick;
   private WaitForSeconds wfs;
   private Coroutine activeRoutine;
   public Elem type;
   public bool isRunning;
   private Vector3 boxCenter, boxHalfExtents, adjustedScale;
   private Collider[] colsInArea;
   private void Awake()
   {
      _collider = GetComponent<BoxCollider>();
      _collider.isTrigger = true;
      wfs = new WaitForSeconds(damageIntervalTime);
      isRunning = true;
      boxHalfExtents = _collider.bounds.extents;
      boxCenter = _collider.bounds.center;
      adjustedScale = transform.lossyScale;
      boxHalfExtents *= Mathf.Max(adjustedScale.x, adjustedScale.y, adjustedScale.z);
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
            tard.Damage(damagePerTick,type);
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
