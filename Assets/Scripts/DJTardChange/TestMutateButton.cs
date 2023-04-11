using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class TestMutateButton : MonoBehaviour
{
    public UnityEvent<Elem> MutateEvent;
    public void MutateFire()
    {
        MutateEvent.Invoke(Elem.Fire);
    }
    public void MutateWater()
    {
        MutateEvent.Invoke(Elem.Water);
    }
    public void MutateStone()
    {
        MutateEvent.Invoke(Elem.Stone);
    }
}
