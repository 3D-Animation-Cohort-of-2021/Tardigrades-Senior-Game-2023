using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;
[CreateAssetMenu]
public class GameActionElemental : ScriptableObject
{
    public UnityAction<Elem, int> raise;

    public void RaiseAction(Elem type, int num)
    {
        raise.Invoke(type, num);
    }
}
