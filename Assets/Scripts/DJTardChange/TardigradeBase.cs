using System.Collections;
using UnityEngine;

/// <summary>
/// The base class for all tardigrade types.
/// <remarks>Written by DJ</remarks>
/// </summary>
public abstract class TardigradeBase : MonoBehaviour, IDamageable
{
    [SerializeField]public float health = 20;
    private float maxHealth;
    [SerializeField] private ProgressBar healthBar;
    [SerializeField]protected Elem type;
    public SquadBrain mySquad;
    [SerializeField]protected ParticleSystem iceShardsPrefab;
    [SerializeField]protected MaterialListSO tardigradeMaterial;
    public GameObject abilityPrefab;

    

    public event System.Action<TardigradeBase> OnDestroy;
    
    protected Ability primary;
    protected Ability secondary;

    public Coroutine IceCoroutine;
    
    

    private void Awake()
    {
        primary = gameObject.AddComponent<Ability>();
        secondary = gameObject.AddComponent<Ability>();

        maxHealth = health;
    }
    
    /// <summary>
    ///  Implements the <c>Damage</c> Interface. Finds how much damage should be taken.
    /// <remarks>Written by DJ</remarks>
    /// </summary>
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
    
    private void UpdateAppearance()
    {
        MaterialSetSO materialSetSO = tardigradeMaterial.GetMaterialSetByType(type);
        GetComponent<Renderer>().material = materialSetSO.material;
        abilityPrefab = materialSetSO.activeAbilityEffect;
    }
    
    /// <summary>
    ///  Is called when ability button is pressed. Should be overloaded in child class to add functionality.
    /// <remarks>Written by DJ</remarks>
    /// </summary>
    public virtual void PrimaryAbility()
    {
        primary.Cooldown();
    }
    /// <summary>
    ///  Is called when ability button is pressed. Should be overloaded in child class to add functionality.
    /// <remarks>Written by DJ</remarks>
    /// </summary>
    public virtual void SecondaryAbility()
    {
        secondary.Cooldown();
    }
    

    /// <summary>
    ///  Removes tard from any lists, stops coroutines, then destroys this tard.
    /// <remarks>Written by DJ</remarks>
    /// </summary>
    public void Death()
    {
        mySquad.RemoveFromSquad(this);
        OnDestroy?.Invoke(this);
        if(IceCoroutine != null) StopCoroutine(IceCoroutine);
        Destroy(gameObject);
        Destroy(healthBar.gameObject);
    }
    
    /// <summary>
    ///  Attaches health bar to the canvas and turns on the billboard if it exists.
    /// <remarks>Written by DJ</remarks>
    /// </summary>
    public void SetupHealthBar(Canvas canvas, Camera cam)
    {
        healthBar.transform.SetParent(canvas.transform);
        if (healthBar.TryGetComponent<Billboard>(out Billboard billboard))
        {
            billboard.cam = cam;
            billboard.canRun = true;
        }
    }

    /// <summary>
    ///  Turns the shield shader on for a duration.
    /// <remarks>Written by DJ</remarks>
    /// </summary>
    private IEnumerator ActivateIceShield(float iceDuration)
    {
        if (TryGetComponent<Animator>(out Animator animator))
        {
            if(animator.GetBool("IceShield")) yield break;
            
            animator.SetBool("IceShield", true);
            yield return new WaitForSeconds(iceDuration);

            if (animator)
            {
                animator.SetBool("IceShield", false);
                Instantiate(iceShardsPrefab, transform);
            }
        }
        IceCoroutine = null;
    }

    /// <summary>
    ///  Adds <paramref name="healthGain"/> to health and updates the hp bar.
    /// <remarks>Written by DJ</remarks>
    /// </summary>
    public void Heal(float healthGain)
    {
        health += healthGain;
        if (health > maxHealth)
        {
            health = maxHealth;
        }
        healthBar.SetProgress(health / maxHealth, 1);
    }

    /// <summary>
    ///  Starts the ActivateIceShield coroutine that Turns the shield shader on for a duration.
    /// <remarks>Written by DJ</remarks>
    /// </summary>
    public void StartIce(float iceDuration)
    {
        IceCoroutine = StartCoroutine(ActivateIceShield(iceDuration));
    }

    public TardigradeBase ConvertTardigrade(Elem element)
    {

        if(element == type)
        {
            return null;
        }
        TardigradeBase tardigradeBase = null;
        switch (element)
        {
            case Elem.Fire:
                tardigradeBase = gameObject.AddComponent<FireTardigrade>();
                break;
            case Elem.Water:
                tardigradeBase = gameObject.AddComponent<WaterTardigrade>();
                break;
            case Elem.Stone:
                tardigradeBase = gameObject.AddComponent<StoneTardigrade>();
                break;
            case Elem.Neutral:
                tardigradeBase = gameObject.AddComponent <NeutralTardigrade>();
                break;
            default:
                break;

        }
        tardigradeBase.health = health;
        tardigradeBase.type = element;
        tardigradeBase.tardigradeMaterial = tardigradeMaterial;
        tardigradeBase.UpdateAppearance();

        return tardigradeBase;
        
    }
}

