using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;
[CreateAssetMenu]
public class GameActionBool : ScriptableObject
{
   public UnityAction<bool> raise;

   public void RaiseAction(bool state)
   {
      if(raise!=null)
         raise.Invoke(state);
   }
}
