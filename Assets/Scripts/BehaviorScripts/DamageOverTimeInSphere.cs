using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
[RequireComponent(typeof(SphereCollider))]

public class DamageOverTimeInSphere : MonoBehaviour
{
   private SphereCollider _collider;
   public float damageIntervalTime, damagePerTick;
   private WaitForSeconds wfs;
   private Coroutine activeRoutine;
   public Elem type;
   public bool isRunning;
   private Vector3 sphereCenter, adjustedScale;
   private float sphereRadius;
   private Collider[] colsInArea;
   private void Awake()
   {
      _collider = GetComponent<SphereCollider>();
      _collider.isTrigger = true;
      wfs = new WaitForSeconds(damageIntervalTime);
      isRunning = true;
      sphereCenter = _collider.bounds.center;
      adjustedScale = transform.lossyScale;
      sphereRadius = _collider.radius * Mathf.Max(adjustedScale.x, adjustedScale.y, adjustedScale.z);
   }

   private void Start()
   {
      activeRoutine = StartCoroutine(RunningDamageRoutine());
   }

   private void IntervalDamage()
   {
      sphereCenter = _collider.bounds.center;
      colsInArea = Physics.OverlapSphere(sphereCenter, sphereRadius);
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
