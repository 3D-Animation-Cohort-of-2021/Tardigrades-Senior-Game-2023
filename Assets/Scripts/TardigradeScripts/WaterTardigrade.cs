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
        primary.cooldown = 4;
        secondary.cooldown = 2;
    }

    public override void PrimaryAbility()
    {
        if (!primary.activatable)
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

            tard.StartIce(_iceDuration, abilityPrefab);
        }

        foreach(Obstacle obstacle in _inRangeObstacles)
        {
            obstacle.Damage(damage, type);
        }

        StartIce(_iceDuration, abilityPrefab);
    }
    
    public override void SecondaryAbility()
    {
        if (!secondary.activatable) return;
        base.SecondaryAbility();
        foreach (TardigradeBase tard in _shieldableTards)
        {
            if(tard == null) continue;
            tard.Heal(2.5f);
        }
        Heal(2.5f);
    }
}
