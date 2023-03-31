using System;
using System.Collections;
using System.Collections.Generic;
using UnityEditor.Rendering;
using UnityEngine;

public class TestRock : MonoBehaviour, IDamageable
{
    private Elem type;
    private float health = 10;
    private void Start()
    {
        type = Elem.Stone;
    }

    public void Damage(float dmgNum, Elem dmgType)
    {
        health -= EffectiveTable.CalculateEffectiveDMG(type, dmgType, dmgNum);
        if(health<=0) Destroy(gameObject);
    }
}
