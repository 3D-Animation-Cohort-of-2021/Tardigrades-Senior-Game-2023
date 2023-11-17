using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class DamageableBehavior : MonoBehaviour, IDamageable
{
    public UnityEvent damageEvent;
    public bool oneTimeDamage, alreadyDamaged;

    public void Damage(float dmgNum, Elem dmgType)
    {
        Debug.Log("ouch");
        if(oneTimeDamage&&alreadyDamaged)
            return;
        damageEvent.Invoke();
        alreadyDamaged = true;
    }
}
