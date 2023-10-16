using System;
using System.Collections;
using System.Linq;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.VFX;

[RequireComponent(typeof(FollowPointBehaviour))]
/// <summary>
/// The base class for all tardigrade types.
/// <remarks>Written by DJ</remarks>
/// </summary>
public abstract class TardigradeBase : MonoBehaviour, IDamageable
{
    public float _health;
    public float _maxHealth;
    public HealthDisplay collar;

    [SerializeField]protected Elem _type;

    public SquadBrain _mySquad;

    [SerializeField]protected TardigradeListSO _tardigradeSets;
    [SerializeField] protected Horde_Info hordeInfo;

    public GameObject _abilityPrefab;
    private GameObject _iceShardsForDeath;
    private Renderer[] _renderers;
    private Animator[] _animators;

    public UnityEvent<Elem, int> deathEvent;

    [Range(0.1f, 2f)]
    public float _highlightSize;

    protected FollowPointBehaviour _followBehavior;
    public VisualEffect _healVisualEffect;
    public VisualEffect _statusVisualEffect;

    protected float _damage = 1;

    public event System.Action<TardigradeBase> OnDestroy;
    
    protected Ability _primary;
    protected ToggleAbility _secondary;

    protected Status _statusEffect;

    public Coroutine IceCoroutine;
    public Coroutine StatusRoutine;
    public Coroutine SecondaryRoutine;

    public GameObject _fireAccessory;
    public GameObject _waterAccessory;
    public GameObject _earthAccessory;

    public VisualEffectAsset _burningAsset;
    public VisualEffectAsset _wetAsset;
    public VisualEffectAsset _muddyAsset;

    private WaitForSeconds _loopDelay;



    protected virtual void Awake()
    {
        if (_type == Elem.Neutral)
        {
            _primary = gameObject.AddComponent<Ability>();
            _secondary = gameObject.AddComponent<ToggleAbility>();
        }

        _followBehavior = GetComponent<FollowPointBehaviour>();
        _renderers = GetComponentsInChildren<Renderer>();
        _animators = GetComponentsInChildren<Animator>();

        _loopDelay = new WaitForSeconds(_secondary.loopDelayTime);
        if (_statusVisualEffect != null)
        {
            SetStatus(Status.None);
        }


        if (_type == Elem.Neutral && _earthAccessory != null)
        {
            UpdateTardigrade();
        }

    }

    private void Start()
    {
        _health = _maxHealth;
    }

    /// <summary>
    /// Purpose: Give tardigrade a status effect
    /// </summary>
    /// <param name="statusEffect">status effect</param>
    /// /// <param name="effectTime">time until effect is removed</param>
    public void SetStatus(Status statusEffect, float effectTime = 0)
    {
        
        if(_statusEffect != statusEffect && _secondary.activatable && _statusEffect != Status.None)
        {
            if (_secondary.ToggleStatus())
            {
                SecondaryAbility();
            }
        }

        _statusEffect = statusEffect;

        switch (_statusEffect)
        {
            case Status.None:
                _statusVisualEffect.Stop();
                _statusVisualEffect.visualEffectAsset = null;
                break;
            case Status.Wet: 
                _statusVisualEffect.visualEffectAsset = _wetAsset;
                break;
            case Status.Burning:
                _statusVisualEffect.visualEffectAsset = _burningAsset;
                break;
            case Status.Muddy:
                _statusVisualEffect.visualEffectAsset = _muddyAsset;
                break;
        }

        if (_statusEffect != Status.None)
        {
            _statusVisualEffect.Play();
        }

        if (effectTime > 0)
        {
            if (StatusRoutine != null)
            {
                StopCoroutine(StatusRoutine);
            }

            StatusRoutine = StartCoroutine(RemoveStatus(effectTime));
        }
    }

    /// <summary>
    /// Purpose: Timer to remove status effect
    /// </summary>
    /// /// <param name="effectTime">time until effect is removed</param>
    private IEnumerator RemoveStatus(float effectTime)
    {
        yield return new WaitForSeconds(effectTime);
        SetStatus(Status.None);
    }

    public Status GetStatus()
    {
        return _statusEffect;
    }

    /// <summary>
    ///  Implements the <c>Damage</c> Interface. Finds how much damage should be taken.
    /// <remarks>Written by DJ</remarks>
    /// </summary>
    public void Damage(float damageAmount, Elem damageType)
    {
        float finalDmg = EffectiveTable.CalculateEffectiveDMG(_type, damageType, damageAmount);
        float modifier = EffectiveTable.CalculateEffectiveDMG(_type, damageType);

        if(damageType == Elem.Water && IceCoroutine != null)
        {
            return;
        }

        if (modifier == 1.5f)
        {
            ReactToWeak();
        }
        else if (modifier == 0.5f)
        {
            ReactToStrong();
        }
        
        if (_animators[1] != null)
        {
            if (_animators[1].GetBool("IceShield"))
            {
                finalDmg = 0;
                _animators[1].SetBool("IceShield", false);
                Instantiate(_iceShardsForDeath, transform);
                IceCoroutine = null;
            }
        }
        _health -= finalDmg;
        collar.UpdateColor(_health, _maxHealth);

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
    
    private void UpdateTardigrade()
    {
        TardigradeSetSO tardigradeSetSO = _tardigradeSets.GetMaterialSetByType(_type);

        
        //_fireAccessory.SetActive(_type == Elem.Fire);
        //_waterAccessory.SetActive(_type == Elem.Water);
        _earthAccessory.SetActive(_type == Elem.Stone);
        
        _primary.cooldown = hordeInfo.GetCD(_type);
        _secondary.cooldown = hordeInfo.GetToggleCD(_type);


        for (int i = 0; i < _renderers.Length; i++)
        {
            if (_renderers[i].gameObject.name.Contains("base"))
            {
                _renderers[i].material = tardigradeSetSO._material;
                break;
            }
        }
        
        _abilityPrefab = tardigradeSetSO._activeAbilityEffect;

        if (tardigradeSetSO._abilityChildObject != null)
        {
            Instantiate(tardigradeSetSO._abilityChildObject, transform);
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
        if (!_secondary.activatable)
        {
            return;
        }

        if (_secondary.FlipToggle())
        {
            SecondaryRoutine = StartCoroutine(SecondaryLoop());
            SetStatus((Status)((int)_type));
        }
        else if (SecondaryRoutine != null)
        {
            SetStatus(Status.None);
            StopCoroutine(SecondaryRoutine);
        }
    }

    protected IEnumerator SecondaryLoop()
    {
        SecondaryAbilityEffect();

        yield return _loopDelay;

        SecondaryRoutine = StartCoroutine(SecondaryLoop());

    }

    protected virtual void SecondaryAbilityEffect()
    {

    }


    /// <summary>
    ///  Removes tard from any lists, stops coroutines, then destroys this tard.
    /// <remarks>Written by DJ</remarks>
    /// </summary>
    public virtual void Death()
    {
        if (deathEvent != null)
        { 
        deathEvent.Invoke(_type, -1);
        }
        _mySquad.RemoveFromSquad(this);
        OnDestroy?.Invoke(this);

        if (IceCoroutine != null)
        {
            StopCoroutine(IceCoroutine);
        }

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

        Animator iceAnimator = null;

        for(int i = 0; i < _animators.Length; i++)
        {
            if (_animators[i].runtimeAnimatorController.name == "PiglettController")
            {
                iceAnimator = _animators[i];
                break;
            }
        }


        if (iceAnimator != null)
        {
            if (iceAnimator.GetBool("IceShield"))
            {
                yield break;
            }

            iceAnimator.SetBool("IceShield", true);

            yield return new WaitForSeconds(iceDuration);

            if (iceAnimator)
            {
                iceAnimator.SetBool("IceShield", false);
                Instantiate(iceShards, transform);
            }
        }
        IceCoroutine = null;
    }

    public void ChangeTardigradeHighlight(bool shouldHighlight)
    {
        float thickness = 0f;

        if (shouldHighlight)
        {
            thickness = 0.1f * _highlightSize;
        }

        if (_renderers == null || _renderers.Length == 0)
        {
            return;
        }

        for(int i = 0; i < _renderers.Length; i++)
        {
            Material[] mats = _renderers[i].materials;
            foreach (Material mat in mats)
            {
                if (mat.name.Contains("Highlight"))
                {
                    mat.SetFloat("_Highlight_Thickness", thickness);
                }
            }
        }
        
    }

    /// <summary>
    ///  Adds <paramref name="healthGain"/> to health and updates the hp bar.
    /// <remarks>Written by DJ</remarks>
    /// </summary>
    public void Heal(float healthGain)
    {
        //if (_health < _maxHealth)
            _health += healthGain;
            _healVisualEffect.Play();
            if (_health > _maxHealth)
            {
                _health = _maxHealth;
            }
            collar.UpdateColor(_health,_maxHealth);
        //}
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
        tardigradeBase._highlightSize = _highlightSize;

        tardigradeBase._type = element;
        tardigradeBase._tardigradeSets = _tardigradeSets;

        tardigradeBase._fireAccessory = _fireAccessory;
        tardigradeBase._waterAccessory = _waterAccessory;
        tardigradeBase._earthAccessory = _earthAccessory;

        tardigradeBase.OnDestroy = OnDestroy;

        tardigradeBase._burningAsset = _burningAsset;
        tardigradeBase._wetAsset = _wetAsset;
        tardigradeBase._muddyAsset = _muddyAsset;

        tardigradeBase._statusVisualEffect = _statusVisualEffect;
        tardigradeBase._healVisualEffect = _healVisualEffect;
        tardigradeBase._primary = _primary;
        tardigradeBase._secondary = _secondary;
        tardigradeBase.hordeInfo = hordeInfo;
        tardigradeBase.collar = collar;

        tardigradeBase.UpdateTardigrade();


        return tardigradeBase;
        
    }
    
}

