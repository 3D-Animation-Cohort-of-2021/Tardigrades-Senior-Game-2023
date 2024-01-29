using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class DamageableBehavior : MonoBehaviour, IDamageable
{
    public UnityEvent damageEvent;
    public bool oneTimeDamage, alreadyDamaged, requiresSameType;
    public Elem objectType;

    public void Damage(float dmgNum, Elem dmgType, DeathType deathType = default)
    {
        if((oneTimeDamage && alreadyDamaged)||(requiresSameType&& dmgType!=objectType))
            return;
        damageEvent.Invoke();
        alreadyDamaged = true;
    }
}
