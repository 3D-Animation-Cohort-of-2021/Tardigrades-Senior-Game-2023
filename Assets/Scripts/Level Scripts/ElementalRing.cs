using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class ElementalRing : MonoBehaviour
{
   public int numHoles, currentHolesActivated;
   public UnityEvent activatedRingEvent;

   private void Awake()
   {
      currentHolesActivated = 0;
   }

   public void ChangeActivatedCount(int num)
   {
      currentHolesActivated += num;
      if(currentHolesActivated>=numHoles)
         activatedRingEvent.Invoke();
   }
}
