using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class DamageableBehavior : MonoBehaviour, IDamageable
{
    public UnityEvent damageEvent;
    public bool oneTimeDamage, alreadyDamaged;
    public Elem requiredType;
    public bool mustMatchType;
    public void Damage(float dmgNum, Elem dmgType)
    {
        Debug.Log("ouch");
        if((oneTimeDamage && alreadyDamaged)||(mustMatchType&&dmgType!=requiredType))
            return;
        damageEvent.Invoke();
        Debug.Log(gameObject+" took "+ dmgType+" damage");
        alreadyDamaged = true;
    }
}
