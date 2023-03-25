using System;
using System.Collections;
using System.Collections.Generic;
using UnityEditor.Rendering;
using UnityEngine;

public class TestRock : Element
{
    private float health = 10;
    private void Start()
    {
        type = Elem.Stone;
        damage = 0;
    }

    private void OnTriggerEnter(Collider other)
    {
        Element otherDmg = other.GetComponent<Element>();
        if (otherDmg!=null)
        {
            health -= otherDmg.GetDamage();
            if(health<=0) Destroy(gameObject);
        }
    }
}
