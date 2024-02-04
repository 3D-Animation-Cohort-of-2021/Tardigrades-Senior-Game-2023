using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.VFX;

public class WaterTardigrade : TardigradeBase
{

    private float _iceDuration = 3;
    private float _healAmount = 2.5f;
    public List<TardigradeBase> _shieldableTards;
    public List<Obstacle> _inRangeObstacles;


    protected override void Awake()
    {
        base.Awake();
        _shieldableTards = new List<TardigradeBase>();
        _inRangeObstacles = new List<Obstacle>();
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

            tard.StartIce(_iceDuration, _abilityPrefab);
        }

        foreach(Obstacle obstacle in _inRangeObstacles)
        {
            obstacle.Damage(_damage, _type);
        }

        StartIce(_iceDuration, _abilityPrefab);
        VisualEffect [] effects = GetComponentsInChildren<VisualEffect>();
        foreach (VisualEffect effect in effects)
        {
            if (effect.visualEffectAsset.name == "ColdSnapVFX")
            {
                effect.Play();
            }
        }
    }

    protected override void SecondaryAbilityEffect()
    {
        foreach (TardigradeBase tard in _shieldableTards)
        {
            if (tard == null)
            {
                continue;
            }

            tard.Heal(_healAmount);
        }

        Heal(_healAmount);

    }
    
}
