using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class ElementalRing : MonoBehaviour, IReset
{
   public int numHoles, currentHolesActivated;
   public UnityEvent activatedRingEvent, resetEvent;
   public bool shouldReset { get; set; }
   private void Awake()
   {
      currentHolesActivated = 0;
   }

   public void ChangeActivatedCount(int num)
   {
      currentHolesActivated += num;
      if(currentHolesActivated>=numHoles)
         activatedRingEvent.Invoke();
      shouldReset = false;
   }

   public void Reset()
   {
      if(shouldReset)
      {
         resetEvent.Invoke();
         currentHolesActivated = 0;
      }
   }

   
   
}
