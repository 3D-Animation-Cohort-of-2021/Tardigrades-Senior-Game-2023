using System;
using System.Collections;
using System.Collections.Generic;
using Unity.Mathematics;
using UnityEngine;
using UnityEngine.Events;

public class Obstacle : MonoBehaviour, IDamageable
{
    public float _totalHealth, _currentHealth;

    public UnityEvent _destroyEvent;
    protected void Awake()
    {
        _currentHealth = _totalHealth;
    }

    protected void ChangeHealth(float amount)
    {
        _currentHealth = Mathf.Clamp(_currentHealth + amount, -1, _totalHealth);

        if (_currentHealth <= 0)
        {
            ReactAndDestroy();
        }
    }
    
    protected void ReactAndDestroy()
    {
        _destroyEvent.Invoke();
    }

    public void SelfDestruct()
    {
        Destroy(gameObject);
    }

    public virtual void Damage(float dmgNum, Elem dmgType)
    {
        
    }
}
