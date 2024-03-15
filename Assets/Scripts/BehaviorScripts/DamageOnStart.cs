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
   public DeathType tardDeathType;
   private void Awake()
   {
      thisCollider = GetComponent<Collider>();
      if (thisCollider.GetType() == typeof(SphereCollider))
         range = thisCollider.GetComponent<SphereCollider>().radius;
      else
         range = thisCollider.bounds.extents.magnitude;
   }

   private void Start()
   {
      Damage();
   }

   public void Damage()
   {
      print(range);
      Collider[] ObjectsInRange = Physics.OverlapSphere(gameObject.transform.position, range);
      foreach (Collider c in ObjectsInRange)
      {
         if (c.TryGetComponent(out IDamageable id)&&c.gameObject.layer!=this.gameObject.layer)
         {
            id.Damage(damage,type, tardDeathType);
         }
      }
   }
}
