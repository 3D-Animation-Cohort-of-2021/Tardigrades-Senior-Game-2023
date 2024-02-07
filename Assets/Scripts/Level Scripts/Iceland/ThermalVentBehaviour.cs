using UnityEngine;
using UnityEngine.Events;

public class ThermalVentBehaviour : MonoBehaviour, IDamageable

{
    public UnityEvent onAwake, onDamage;
    private IDamageable _damageableImplementation;

    public void Awake()
    {
        onAwake.Invoke();
    }


    public void Damage(float dmgNum, Elem dmgType, DeathType deathType = default)
    {
        if (dmgType == Elem.Fire)
        {
            Debug.Log("Warm Up Tardigrades");
            onDamage.Invoke();
        }
    }
}


