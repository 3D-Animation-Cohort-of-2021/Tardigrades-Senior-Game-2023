using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class BurnableBehavior : MonoBehaviour
{
    public UnityEvent BurnEvent;

    private void OnTriggerEnter(Collider collision)
    {
        if (collision.gameObject.TryGetComponent<FireTardigrade>(out FireTardigrade fireTardigrade) && fireTardigrade.ignited)
        {
            BurnEvent.Invoke();
        }
    }
}
