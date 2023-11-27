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

    protected Animator _tarAnimator;

    public VisualEffect _healVisualEffect;

    protected float _damage = 1;

    public event System.Action<TardigradeBase> OnDestroy;
    
    

    public Coroutine IceCoroutine;
    public Coroutine StatusRoutine;

    public GameObject _fireAccessory;
    public GameObject _waterAccessory;
    public GameObject _earthAccessory;



    protected virtual void Awake()
    {
        _followBehavior = GetComponent<FollowPointBehaviour>();
        _renderers = GetComponentsInChildren<Renderer>();
        _animators = GetComponentsInChildren<Animator>();
        _tarAnimator = GetComponent<Animator>();

        

        if (_type == Elem.Neutral && _earthAccessory != null)
        {
            _health = _maxHealth;
            UpdateTardigrade();
        }

    }

    /// <summary>
    ///  Implements the <c>Damage</c> Interface. Finds how much damage should be taken.
    /// <remarks>Written by DJ</remarks>
    /// </summary>
    public void Damage(float damageAmount, Elem damageType)
    {
        float finalDmg = EffectiveTable.CalculateEffectiveDMG(_type, damageType, damageAmount);
        float modifier = EffectiveTable.CalculateEffectiveDMG(_type, damageType);

        _tarAnimator.SetTrigger("flinch");

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
        
        //print(GetComponent<TardigradeBase>() +" Damage Taken: "+ finalDmg);
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
        //Debug.Log("damaged");
    }

    protected virtual void ReactToStrong()
    {
        //Debug.Log(gameObject + "is resistant to that damage");
        //Debug.Log("damaged");
    }
    
    private void UpdateTardigrade()
    {
        TardigradeSetSO tardigradeSetSO = _tardigradeSets.GetMaterialSetByType(_type);

        
        //_fireAccessory.SetActive(_type == Elem.Fire);
        //_waterAccessory.SetActive(_type == Elem.Water);
        _earthAccessory.SetActive(_type == Elem.Stone);
        
        

        if(tardigradeSetSO._conversionEffect != null)
        {
            Instantiate(tardigradeSetSO._conversionEffect, transform.position, transform.rotation);
        }


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
        
    }
    /// <summary>
    ///  Is called when ability button is pressed. Should be overloaded in child class to add functionality.
    /// <remarks>Written by DJ</remarks>
    /// </summary>
    public virtual void SecondaryAbility()
    {
        SecondaryAbilityEffect();
        
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
        
        _tarAnimator.SetTrigger("death");

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
        if (_health < _maxHealth)
        {
            _health += healthGain;

            if (_healVisualEffect.enabled)
            {
                _healVisualEffect.Play();
            }
            else
            {
                _healVisualEffect.enabled = true;
            }

            if (_health > _maxHealth)
            {
                _health = _maxHealth;
            }
            collar.UpdateColor(_health,_maxHealth);
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

        _tarAnimator.SetTrigger("evolve");
        
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
        tardigradeBase._healVisualEffect = _healVisualEffect;
        tardigradeBase.hordeInfo = hordeInfo;
        tardigradeBase.collar = collar;

        tardigradeBase.UpdateTardigrade();

        return tardigradeBase;
        
    }

    public void Update()
    {
        if (Input.GetKeyDown("space"))
        {
            Damage(1,Elem.Neutral);
        }
    }
}

