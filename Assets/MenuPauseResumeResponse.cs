using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class MenuPauseResumeResponse : MonoBehaviour
{
   public bool isPaused;
   public UnityEvent pauseEvent, resumeEvent;

   private void Awake()
   {
      isPaused = false;
   }

   public void SetPauseStatus(bool state)
   {
      isPaused = state;
   }

   public void RespondToCall()
   {
      if(isPaused)
      {
         resumeEvent.Invoke();
         isPaused = false;
      }
      else
      {
         pauseEvent.Invoke();
         isPaused = true;
      }
   }
}
