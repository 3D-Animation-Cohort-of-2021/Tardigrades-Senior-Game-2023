using Unity.VisualScripting;
using UnityEngine;
using UnityEngine.Events;

public class OpenGate : MonoBehaviour, IDamageable

{
    public UnityEvent onAwake, onDamage;
    private IDamageable _damageableImplementation;

    public void Awake()
    {
        onAwake.Invoke();
    }


    public void Damage(float dmgNum, Elem dmgType, DeathType deathType = default)
    {
       onDamage.Invoke();
    }

}


