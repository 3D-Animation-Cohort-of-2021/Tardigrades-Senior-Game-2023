using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
[RequireComponent(typeof(BoxCollider))]

public class DamageOverTime : MonoBehaviour
{
   private BoxCollider _collider;
   public float damageIntervalTime, damagePerTick;
   private WaitForSeconds wfs;
   private Coroutine activeRoutine;
   public bool isRunning;
   private Vector3 boxCenter, boxHalfExtents;
   public Collider[] colsInArea;
   private void Awake()
   {
      _collider = GetComponent<BoxCollider>();
      _collider.isTrigger = true;
      wfs = new WaitForSeconds(damageIntervalTime);
      isRunning = true;
      boxHalfExtents = _collider.bounds.extents;
      boxCenter = _collider.bounds.center;
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
            tard.Damage(damagePerTick,Elem.Neutral);
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
