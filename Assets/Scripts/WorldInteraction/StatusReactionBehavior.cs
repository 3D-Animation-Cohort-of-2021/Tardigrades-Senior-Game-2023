using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class StatusReactionBehavior : MonoBehaviour
{
    public Status reactiveEffect;

    public UnityEvent EffectReaction;

    

    private void OnTriggerEnter(Collider collision)
    {
        if(collision.gameObject.TryGetComponent<TardigradeBase>(out TardigradeBase tardigradeBase) && tardigradeBase.GetStatus() == reactiveEffect)
        {
            EffectReaction.Invoke();
        }
    }
}
