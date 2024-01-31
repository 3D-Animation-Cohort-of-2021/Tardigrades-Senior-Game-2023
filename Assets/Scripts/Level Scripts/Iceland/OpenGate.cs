using Unity.VisualScripting;
using UnityEngine;
using UnityEngine.Events;

public class OpenGate : MonoBehaviour, IDamageable

{
    public UnityEvent onAwake, onDamage;
    private IDamageable _damageableImplementation;
    private Elem stoneType;

    public void Awake()
    {
        onAwake.Invoke();
    }

    public void Damage(float dmgNum, Elem dmgType, DeathType deathType = default)
    {
        if (EffectiveTable.DetermineEffectiveness(dmgType, stoneType) == Effectiveness.Reactive)
        {
            Debug.Log("Warm Up Tardigrades");
            onDamage.Invoke();
        }
    }
}


