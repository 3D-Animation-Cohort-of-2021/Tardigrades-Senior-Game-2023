using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class IgnitableBehavior : MonoBehaviour
{
    public UnityEvent IgnitionEvent;

    private void OnTriggerEnter(Collider collision)
    {
        if (collision.gameObject.TryGetComponent<FireTardigrade>(out FireTardigrade fireTardigrade) && fireTardigrade.ignited)
        {
            IgnitionEvent.Invoke();
        }
    }
}
