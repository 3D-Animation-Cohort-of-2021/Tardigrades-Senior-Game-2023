using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(Ability))]
public abstract class TardigradeBase : MonoBehaviour, IDamageable
{
    [SerializeField]public float health = 5;
    protected float speed;
    [SerializeField]protected Elem type;
    
    protected Ability primary;

    private void Awake()
    {
        primary = GetComponent<Ability>();
    }
    
    public void Damage(float dmgNum, Elem dmgType)
    {
        float finalDmg = EffectiveTable.CalculateEffectiveDMG(type, dmgType, dmgNum);
        float modifier = EffectiveTable.CalculateEffectiveDMG(type, dmgType);
        
        if (modifier==1.5f)
            ReactToWeak();
        else if (modifier==0.5f)
            ReactToStrong();
        health -= finalDmg;
        print("Damage Taken: "+ finalDmg);
    }
    public string GetElementTypeString()
    {
        return type.ToString();
    }

    public Elem GetElementType()
    {
        return type;
    }

    protected virtual void ReactToWeak()
    {
        Debug.Log(gameObject + "is weak to that damage");
    }

    protected virtual void ReactToStrong()
    {
        Debug.Log(gameObject + "is resistant to that damage");
    }

    public virtual void PrimaryAbility()
    {
        //To be overloaded in child classes
    }

    protected IEnumerator CooldownTracker(Ability ability)
    {
        ability.activatable = false;
        yield return new WaitForSeconds(ability.cooldown);
        ability.activatable = true;
    }

}
