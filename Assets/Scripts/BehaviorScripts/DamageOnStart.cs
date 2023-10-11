using System;
using System.Collections;
using System.Collections.Generic;
using System.Data.Common;
using UnityEngine;
[RequireComponent(typeof(Collider))]
public class DamageOnStart : MonoBehaviour
{
   private Collider thisCollider;
   private float range;
   public float damage;
   public Elem type;
   private void Awake()
   {
      thisCollider = GetComponent<Collider>();
      range = thisCollider.bounds.extents.magnitude;
   }

   private void Start()
   {
      Collider[] ObjectsInRange = Physics.OverlapSphere(gameObject.transform.position, range);
      foreach (Collider c in ObjectsInRange)
      {
         if (c.TryGetComponent<Obstacle>(out var id))
         {
            Debug.Log(id);
            id.Damage(damage,type);
         }
      }
   }
}
