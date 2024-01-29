using System;
using UnityEngine;
[RequireComponent(typeof(Collider))]
public class DamageOnEnter : MonoBehaviour
{

    public float _damage;
    public Elem _damageType;
    public DeathType tardDeathType;

    private void Awake()
    {
        GetComponent<Collider>().isTrigger = true;
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.TryGetComponent(out IDamageable otherObj))
        {
            otherObj.Damage(_damage, _damageType, tardDeathType);
        }
    }
}
