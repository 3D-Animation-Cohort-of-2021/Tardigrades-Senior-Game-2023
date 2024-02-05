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


    public void Damage(float dmgNum = 1f, Elem dmgType = Elem.Stone, DeathType deathType = default)
    {
       onDamage.Invoke();
    }

}


