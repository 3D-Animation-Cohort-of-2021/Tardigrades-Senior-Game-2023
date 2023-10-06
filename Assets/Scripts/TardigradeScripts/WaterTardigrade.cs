using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WaterTardigrade : TardigradeBase
{

    private float _iceDuration = 3;
    private float _healAmount = 2.5f;
    public List<TardigradeBase> _shieldableTards;
    public List<Obstacle> _inRangeObstacles;
    private WaitForSeconds _loopDelay;

    private Coroutine _healCoroutine;


    protected void Awake()
    {
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

    protected override void SecondaryAbilityEffect()
    {
        Debug.Log("Healing...");
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
