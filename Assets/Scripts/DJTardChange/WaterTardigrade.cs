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
        primary.activatable = true;
    }

    protected override void ReactToStrong()
    {
        base.ReactToStrong();
        //Debug.Log("the water tardigrade is barely affected by the fire");
    }
    protected override void ReactToWeak()
    {
        base.ReactToWeak();
        //Debug.Log("the water tardigrade is hindered by the stone trap");
    }

    public override void PrimaryAbility()
    {
        if (!primary.activatable) return;
        FindTargetsInRange();
        StartCoroutine(CooldownTracker(primary));
    }

    private void FindTargetsInRange()
    {
        foreach (TardigradeBase tard in shieldableTards)
        {
            if(tard == null) continue;
            StartCoroutine(tard.ActivateIceShield(iceDuration));
        }
        StartCoroutine(ActivateIceShield(iceDuration));
    }
}
