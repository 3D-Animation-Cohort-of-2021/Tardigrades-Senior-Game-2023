using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
[RequireComponent(typeof(SphereCollider))]
public class ElementalFlameCore : MonoBehaviour
{
   public ElementalFlame parentFlameObj;

   private void Awake()
   {
      GetComponent<SphereCollider>().isTrigger = true;
   }
}
