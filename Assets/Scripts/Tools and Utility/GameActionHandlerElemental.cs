using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class GameActionHandlerElemental : MonoBehaviour
{
    public GameActionElemental elementalGameAction;
    public UnityEvent<Elem, int> respondEvent;

    private void Start()
    {
        elementalGameAction.raise += Respond;
    }

    public void Respond(Elem type, int num)
    {
        respondEvent.Invoke(type, num);
    }
}
