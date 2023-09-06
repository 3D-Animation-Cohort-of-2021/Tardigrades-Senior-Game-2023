using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class BurnableTerrain : MonoBehaviour
{
    public UnityEvent BurnAwayEvent;

    private void OnTriggerEnter(Collider collision)
    {
        if(collision.gameObject.TryGetComponent<TardigradeBase>(out TardigradeBase tardigradeBase) && tardigradeBase._statusEffect == Status.Burning)
        {
            BurnAwayEvent.Invoke();
        }
    }
}
