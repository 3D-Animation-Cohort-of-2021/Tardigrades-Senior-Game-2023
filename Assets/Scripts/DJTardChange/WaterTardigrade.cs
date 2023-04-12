using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WaterTardigrade : TardigradeBase
{
    private float iceDuration = 3;
    public List<TardigradeBase> shieldableTards;

    protected void Start()
    {
        primary.cooldown = 4;
        secondary.cooldown = 2;
    }

    public override void PrimaryAbility()
    {
        if (!primary.activatable) return;
        base.PrimaryAbility();
        foreach (TardigradeBase tard in shieldableTards)
        {
            if(tard == null) continue;
            tard.StartIce(iceDuration);
        }
        StartIce(iceDuration);
    }
    
    public override void SecondaryAbility()
    {
        if (!secondary.activatable) return;
        base.SecondaryAbility();
        foreach (TardigradeBase tard in shieldableTards)
        {
            if(tard == null) continue;
            tard.Heal(.5f);
        }
        Heal(.5f);
    }
}
