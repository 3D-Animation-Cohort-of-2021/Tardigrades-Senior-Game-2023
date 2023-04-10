using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(Ability))]
public abstract class TardigradeBase : MonoBehaviour, IDamageable
{
    [SerializeField]public float health = 20;
    private float maxHealth;
    [SerializeField] private ProgressBar healthBar;
    protected float speed;
    [SerializeField]protected Elem type;
    public SquadBrain mySquad;
    [SerializeField]protected ParticleSystem iceShardsPrefab;

    public delegate void DestroyEvent(TardigradeBase tard);

    public DestroyEvent OnDestroy;
    
    protected Ability primary;
    protected Ability secondary;
    
    

    private void Awake()
    {
        primary = gameObject.AddComponent<Ability>();
        secondary = gameObject.AddComponent<Ability>();

        primary.activatable = true;
        secondary.activatable = true;
        
        maxHealth = health;
    }
    
    public void Damage(float dmgNum, Elem dmgType)
    {
        float finalDmg = EffectiveTable.CalculateEffectiveDMG(type, dmgType, dmgNum);
        float modifier = EffectiveTable.CalculateEffectiveDMG(type, dmgType);
        
        if (modifier==1.5f)
            ReactToWeak();
        else if (modifier==0.5f)
            ReactToStrong();
        
        if (TryGetComponent<Animator>(out Animator animator))
        {
            if (animator.GetBool("IceShield"))
            {
                finalDmg = 0;
                animator.SetBool("IceShield", false);
                Instantiate(iceShardsPrefab, transform);
            }
        }
        health -= finalDmg;
        healthBar.SetProgress(health / maxHealth, 1);
        if (health <= 0)
        {
            Death();
        }
        
        //print("Damage Taken: "+ finalDmg);
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
        //Debug.Log(gameObject + "is weak to that damage");
    }

    protected virtual void ReactToStrong()
    {
        //Debug.Log(gameObject + "is resistant to that damage");
    }

    public virtual void PrimaryAbility()
    {
        //To be overloaded in child classes
    }
    public virtual void SecondaryAbility()
    {
        //To be overloaded in child classes
    }

    protected IEnumerator CooldownTracker(Ability ability)
    {
        ability.activatable = false;
        yield return new WaitForSeconds(ability.cooldown);
        ability.activatable = true;
    }

    public void Death()
    {
        mySquad.RemoveFromSquad(this);
        OnDestroy?.Invoke(this);
        Destroy(gameObject);
        Destroy(healthBar.gameObject);
    }

    public void SetupHealthBar(Canvas canvas, Camera cam)
    {
        healthBar.transform.SetParent(canvas.transform);
        if (healthBar.TryGetComponent<Billboard>(out Billboard billboard))
        {
            billboard.cam = cam;
            billboard.canRun = true;
        }
    }

    public IEnumerator ActivateIceShield(float iceDuration)
    {
        if (TryGetComponent<Animator>(out Animator animator))
        {
            if(animator.GetBool("IceShield")) yield break;
            
            animator.SetBool("IceShield", true);
            yield return new WaitForSeconds(iceDuration);

            if (gameObject != null)
            {
                animator.SetBool("IceShield", false);
                Instantiate(iceShardsPrefab, transform);
            }
        }
    }

    public void Heal(float healthGain)
    {
        health += healthGain;
        if (health > maxHealth)
        {
            health = maxHealth;
        }
        healthBar.SetProgress(health / maxHealth, 1);
    }
}
