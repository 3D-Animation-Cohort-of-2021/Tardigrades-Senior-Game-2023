using UnityEngine;
using UnityEngine.Events;

public class ThermalVentBehaviour : MonoBehaviour, IDamageable

{
    public UnityEvent onAwake, onDamage;
    private IDamageable _damageableImplementation;
    public Elem flameType;

    public void Awake()
    {
        onAwake.Invoke();
    }


    public void Damage(float dmgNum, Elem dmgType)
    {
        if (EffectiveTable.DetermineEffectiveness(dmgType, flameType) == Effectiveness.Reactive)
        {
           Debug.Log("Warm Up Tardigrades");
            onDamage.Invoke();
        }
        
    }
}


