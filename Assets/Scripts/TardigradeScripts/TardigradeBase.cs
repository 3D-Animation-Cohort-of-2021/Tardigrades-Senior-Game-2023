using System.Collections;
using UnityEngine;

[RequireComponent(typeof(FollowPointBehaviour))]
/// <summary>
/// The base class for all tardigrade types.
/// <remarks>Written by DJ</remarks>
/// </summary>
public abstract class TardigradeBase : MonoBehaviour, IDamageable
{
    public float _health;
    private float _maxHealth;
    [SerializeField]protected Elem _type;
    public SquadBrain _mySquad;
    [SerializeField]protected MaterialListSO _tardigradeMaterial;
    public GameObject _abilityPrefab;
    protected FollowPointBehaviour _followBehavior;

    private GameObject _iceShardsForDeath;

    protected float _damage = 1;

    public event System.Action<TardigradeBase> OnDestroy;
    
    protected Ability _primary;
    protected Ability _secondary;

    public Status _statusEffect;

    public Coroutine IceCoroutine;
    public Coroutine StatusRoutine;
    
    

    private void Awake()
    {
        _primary = gameObject.AddComponent<Ability>();
        _secondary = gameObject.AddComponent<Ability>();

        _followBehavior = GetComponent<FollowPointBehaviour>();
        _statusEffect = Status.None;

        _maxHealth = _health;
    }

    /// <summary>
    /// Purpose: Give tardigrade a status effect
    /// </summary>
    /// <param name="statusEffect">status effect</param>
    /// /// <param name="effectTime">time until effect is removed</param>
    public void SetStatus(Status statusEffect, float effectTime)
    {
        _statusEffect = statusEffect;
        if(StatusRoutine != null)
        {
            StopCoroutine(StatusRoutine);
        }
        StatusRoutine = StartCoroutine(RemoveStatus(effectTime));
    }

    /// <summary>
    /// Purpose: Timer to remove status effect
    /// </summary>
    /// /// <param name="effectTime">time until effect is removed</param>
    private IEnumerator RemoveStatus(float effectTime)
    {
        yield return new WaitForSeconds(effectTime);
        _statusEffect = Status.None;
    }

    /// <summary>
    ///  Implements the <c>Damage</c> Interface. Finds how much damage should be taken.
    /// <remarks>Written by DJ</remarks>
    /// </summary>
    public void Damage(float damageAmount, Elem damageType)
    {
        float finalDmg = EffectiveTable.CalculateEffectiveDMG(_type, damageType, damageAmount);
        float modifier = EffectiveTable.CalculateEffectiveDMG(_type, damageType);

        if (modifier == 1.5f)
        {
            ReactToWeak();
        }
        else if (modifier == 0.5f)
        {
            ReactToStrong();
        }
        
        if (TryGetComponent(out Animator animator))
        {
            if (animator.GetBool("IceShield"))
            {
                finalDmg = 0;
                animator.SetBool("IceShield", false);
                Instantiate(_iceShardsForDeath, transform);
            }
        }
        _health -= finalDmg;

        if (_health <= 0)
        {
            Death();
        }
        
        print(GetComponent<TardigradeBase>() +" Damage Taken: "+ finalDmg);
    }
    public string GetElementTypeString()
    {
        return _type.ToString();
    }

    public Elem GetElementType()
    {
        return _type;
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
        MaterialSetSO materialSetSO = _tardigradeMaterial.GetMaterialSetByType(_type);
        Renderer[] renderers = GetComponentsInChildren<Renderer>();
        for(int i = 0; i < renderers.Length; i++)
        {
            renderers[i].material = materialSetSO.material;
        }
        
        _abilityPrefab = materialSetSO.activeAbilityEffect;

        if (materialSetSO.childObject != null)
        {
            Instantiate(materialSetSO.childObject, transform);
        }
    }
    
    /// <summary>
    ///  Is called when ability button is pressed. Should be overloaded in child class to add functionality.
    /// <remarks>Written by DJ</remarks>
    /// </summary>
    public virtual void PrimaryAbility()
    {
        _primary.Cooldown();
    }
    /// <summary>
    ///  Is called when ability button is pressed. Should be overloaded in child class to add functionality.
    /// <remarks>Written by DJ</remarks>
    /// </summary>
    public virtual void SecondaryAbility()
    {
        _secondary.Cooldown();
    }
    

    /// <summary>
    ///  Removes tard from any lists, stops coroutines, then destroys this tard.
    /// <remarks>Written by DJ</remarks>
    /// </summary>
    public void Death()
    {
        _mySquad.RemoveFromSquad(this);
        OnDestroy?.Invoke(this);
        if(IceCoroutine != null) StopCoroutine(IceCoroutine);
        Destroy(gameObject);
    }
    
    /// <summary>
    ///  Attaches health bar to the canvas and turns on the billboard if it exists.
    /// <remarks>Written by DJ</remarks>
    /// </summary>
    //public void SetupHealthBar(Canvas canvas, Camera cam)
    //{
    //    healthBar.transform.SetParent(canvas.transform);
    //    if (healthBar.TryGetComponent<Billboard>(out Billboard billboard))
    //    {
    //        billboard.cam = cam;
    //        billboard.canRun = true;
    //    }
    //}

    /// <summary>
    ///  Turns the shield shader on for a duration.
    /// <remarks>Written by DJ</remarks>
    /// </summary>
    private IEnumerator ActivateIceShield(float iceDuration, GameObject iceShards)
    {
        _iceShardsForDeath = iceShards;
        if (TryGetComponent<Animator>(out Animator animator))
        {
            if(animator.GetBool("IceShield")) yield break;
            
            animator.SetBool("IceShield", true);
            yield return new WaitForSeconds(iceDuration);

            if (animator)
            {
                animator.SetBool("IceShield", false);
                Instantiate(iceShards, transform);
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
        _health += healthGain;
        if (_health > _maxHealth)
        {
            _health = _maxHealth;
        }
    }

    /// <summary>
    ///  Starts the ActivateIceShield coroutine that Turns the shield shader on for a duration.
    /// <remarks>Written by DJ</remarks>
    /// </summary>
    public void StartIce(float iceDuration, GameObject iceShards)
    {
        IceCoroutine = StartCoroutine(ActivateIceShield(iceDuration, iceShards));
    }



    public TardigradeBase ConvertTardigrade(Elem element)
    {
        if(element == _type)
        {
            return null;
        }
        TardigradeBase tardigradeBase = null;
        switch (element)
        {
            case Elem.Fire:
                tardigradeBase = gameObject.AddComponent<FireTardigrade>();
                tardigradeBase.gameObject.name = "FireTardigrade";
                break;
            case Elem.Water:
                tardigradeBase = gameObject.AddComponent<WaterTardigrade>();
                tardigradeBase.gameObject.name = "WaterTardigrade";
                break;
            case Elem.Stone:
                tardigradeBase = gameObject.AddComponent<StoneTardigrade>();
                tardigradeBase.gameObject.name = "StoneTardigrade";
                break;
            case Elem.Neutral:
                tardigradeBase = gameObject.AddComponent <NeutralTardigrade>();
                tardigradeBase.gameObject.name = "NeutralTardigrade";
                break;
            default:
                break;

        }
        tardigradeBase._health = _health;
        tardigradeBase._maxHealth = _maxHealth;
        tardigradeBase._type = element;
        tardigradeBase._tardigradeMaterial = _tardigradeMaterial;
        tardigradeBase.UpdateAppearance();

        return tardigradeBase;
        
    }
}
