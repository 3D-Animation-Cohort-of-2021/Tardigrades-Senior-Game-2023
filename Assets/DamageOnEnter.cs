using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DamageOnEnter : MonoBehaviour
{

    public float dmg;
    private void OnTriggerEnter(Collider other)
    {
        IDamageable otherObj = other.GetComponent<IDamageable>();
        if(otherObj != null) otherObj.Damage(dmg, Elem.Fire);
    }
}
