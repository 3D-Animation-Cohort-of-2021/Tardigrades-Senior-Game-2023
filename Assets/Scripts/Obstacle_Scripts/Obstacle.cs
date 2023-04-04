using System;
using System.Collections;
using System.Collections.Generic;
using Unity.Mathematics;
using UnityEngine;
using UnityEngine.Events;

public class Obstacle : Element
{
    public float totalHealth, currentHealth;

    public UnityEvent destroyEvent;
    protected void Awake()
    {
        currentHealth = totalHealth;
    }

    protected void ChangeHealth(float amount)
    {
        currentHealth = Mathf.Clamp(currentHealth + amount, -1, totalHealth);
        if(currentHealth<=0)
            ReactAndDestroy();
    }
    
    protected void ReactAndDestroy()
    {
        destroyEvent.Invoke();
    }

    public void SelfDestruct()
    {
        Destroy(gameObject);
    }
    
}
