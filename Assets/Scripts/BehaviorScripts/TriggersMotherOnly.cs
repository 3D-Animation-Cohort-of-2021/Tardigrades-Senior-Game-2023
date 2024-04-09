using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class TriggersMotherOnly : MonoBehaviour
{
    public UnityEvent onTriggerEnter;
    public UnityEvent onTriggerExit;
    public UnityEvent onTriggerStay;
    private GameObject playerCenter;

    private void OnTriggerEnter(Collider other)
    {
        if (other.TryGetComponent(out SquadManager sM))
        {
            onTriggerEnter.Invoke();
        }
    }

    private void OnTriggerExit(Collider other)
    {
        if (other.TryGetComponent(out SquadManager sM))
        {
            onTriggerExit.Invoke();
        }
    }

    private void OnTriggerStay(Collider other)
    {
        if (other.TryGetComponent(out SquadManager sM))
        {
            onTriggerStay.Invoke();
        }
    }
}