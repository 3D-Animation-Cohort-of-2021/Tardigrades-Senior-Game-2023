using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DamageOnEnter : MonoBehaviour
{

    public float dmg;
    private void OnTriggerEnter(Collider other)
    {
        float newDmg = dmg;
        if (other.TryGetComponent<IDamageable>(out IDamageable otherObj))
        {
            if(other.TryGetComponent<TardigradeBase>(out TardigradeBase tard))
            {
                if (tard.GetElementType() == Elem.Fire)
                {
                    newDmg = 0;
                }
                else
                {
                    newDmg = dmg*0.075f;
                }
                
            }
            otherObj.Damage(newDmg, Elem.Fire);
        }
    }
}
