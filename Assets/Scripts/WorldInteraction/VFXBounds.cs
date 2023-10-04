using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.VFX;
[RequireComponent(typeof(Collider))]
public class VFXBounds : MonoBehaviour
{
   public VisualEffect effect;
   private Collider thisCollider;

   private void Awake()
   {
      thisCollider = GetComponent<Collider>();
      thisCollider.isTrigger = true;
   }

   private void OnTriggerEnter(Collider other)
   {
      if (other.TryGetComponent<PlayerControl>(out PlayerControl controller))
      {
         effect.Play();
      }
   }

   private void OnTriggerExit(Collider other)
   {
      if (other.TryGetComponent<PlayerControl>(out PlayerControl controller))
      {
         effect.Stop();
      }
   }
}
