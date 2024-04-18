using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.VFX;

public class WaterTardigrade : TardigradeBase
{

    private float _iceDuration = 4;
    private float _healAmount = 0.5f;
    public List<TardigradeBase> _shieldableTards;
    public List<Obstacle> _inRangeObstacles;
    


    protected override void Awake()
    {
        base.Awake();
        _shieldableTards = new List<TardigradeBase>();
        _inRangeObstacles = new List<Obstacle>();
    }

    protected override void UpdateTardigrade()
    {
        base.UpdateTardigrade();

        VisualEffect[] effects = GetComponentsInChildren<VisualEffect>();
        foreach (VisualEffect effect in effects)
        {
            if (effect.visualEffectAsset.name == "ColdSnapVFX")
            {
                _abilityEffect = effect;
            }
        }
    }

    public override void PrimaryAbility()
    {
        DamageOnEnter explosion = Instantiate(_abilityPrefab, transform.position, Quaternion.identity).GetComponent<DamageOnEnter>();
        explosion._damage = _damage;
    
        base.PrimaryAbility();

        foreach (TardigradeBase tard in _shieldableTards)
        {
            if (tard == null)
            {
                continue;
            }

            if (tard.IceCoroutine == null)
            {
                tard.StartIce(_iceDuration, _abilityPrefab);
            }
        }
        StartIce(_iceDuration, _abilityPrefab);

        foreach(Obstacle obstacle in _inRangeObstacles)
        {
            obstacle.Damage(_damage, _type);
        }

        
        _abilityEffect.Play();
    }

    protected override void SecondaryAbilityEffect()
    {
        foreach (TardigradeBase tard in _shieldableTards)
        {
            if (tard == null)
            {
                continue;
            }
            if (tard.HealCoroutine == null)
            {
                tard.StartHeal(_healAmount, hordeInfo.waterToggleCD);
            }
            
        }
        StartHeal(_healAmount, hordeInfo.waterToggleCD);

    }
    
}
