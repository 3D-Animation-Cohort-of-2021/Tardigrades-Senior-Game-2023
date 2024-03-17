using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class DamageableBehavior : MonoBehaviour, IDamageable
{
    public UnityEvent damageEvent;
    public bool oneTimeDamage, alreadyDamaged, requiresSpecificType;
    public Elem requiredType;

    public void Damage(float dmgNum, Elem dmgType, DeathType deathType = default)
    {
        if((oneTimeDamage && alreadyDamaged)||(requiresSpecificType&& dmgType!=requiredType))
            return;
        damageEvent.Invoke();
        alreadyDamaged = true;
    }
}
