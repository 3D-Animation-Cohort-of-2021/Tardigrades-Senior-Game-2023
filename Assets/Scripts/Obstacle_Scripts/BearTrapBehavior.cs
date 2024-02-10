using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class BearTrapBehavior : MonoBehaviour
{
    public Elem damageType;
    public DeathType tardDeathType;
    public float damageAmount;
    public UnityEvent beginDamageDisplayEvent;

    private Vector3 sphereCenter, adjustedScale;
    private BoxCollider _collider;
    private Animator _animator;

    void Awake()
    {
        _collider = GetComponent<BoxCollider>();
        _animator = GetComponent<Animator>();
    }

    private void OnTriggerEnter(Collider obj)
    {
        if (obj.TryGetComponent(out TardigradeBase tard))
        {
            if (tard.GetElementType() == Elem.Stone)
            {
                _animator.SetTrigger("Break");
            }

            else
            {
                _animator.SetTrigger("Close");
                tard.Damage(damageAmount, damageType, tardDeathType);
            }

            _collider.enabled = false;
        }
    }
}