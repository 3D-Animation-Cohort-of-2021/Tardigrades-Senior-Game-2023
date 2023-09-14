using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WaterTardigrade : TardigradeBase
{

    private float _iceDuration = 3;
    public List<TardigradeBase> _shieldableTards;
    public List<Obstacle> _inRangeObstacles;


    protected void Start()
    {
        _primary.cooldown = 4;
        _secondary.cooldown = 2;
        _shieldableTards = new List<TardigradeBase>();
        _inRangeObstacles = new List<Obstacle>();
    }

    public override void PrimaryAbility()
    {
        if (!_primary.activatable)
        {
            return;
        }

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
    }
    
    public override void SecondaryAbility()
    {
        if (!_secondary.activatable)
        {
            return;
        }

        base.SecondaryAbility();

        foreach (TardigradeBase tard in _shieldableTards)
        {
            if (tard == null)
            {
                continue;
            }
            tard.Heal(2.5f);
        }
        Heal(2.5f);
    }
}
