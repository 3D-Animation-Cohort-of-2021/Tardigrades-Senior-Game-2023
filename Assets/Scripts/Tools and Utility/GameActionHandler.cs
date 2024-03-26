using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class GameActionHandler : MonoBehaviour
{
 public GameAction gameActionObj;
 public UnityEvent respondEvent;

 public void Start()
 {
     if(gameActionObj!=null)
         gameActionObj.raise += Respond;
 }

 public void Respond()
 {
   respondEvent.Invoke();
 }

 public void OnDestroy()
 {
     gameActionObj.raise -= Respond;
 }
}
