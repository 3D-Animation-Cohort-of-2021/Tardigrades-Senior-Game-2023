using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WaterTardigrade : TardigradeBase
{
    private float iceDuration = 3;
    public ParticleSystem iceShardsPrefab;
    public List<TardigradeBase> shieldableTards;

    protected void Start()
    {
        primary.cooldown = 4;
        primary.activatable = true;
    }

    protected override void ReactToStrong()
    {
        base.ReactToStrong();
        Debug.Log("the water tardigrade is barely affected by the fire");
    }
    protected override void ReactToWeak()
    {
        base.ReactToWeak();
        Debug.Log("the water tardigrade is hindered by the stone trap");
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
            StartCoroutine(IceAbility(tard));
        }
        StartCoroutine(IceAbility(this));
    }
    private IEnumerator IceAbility(TardigradeBase tard)
    {
        if (tard.GetComponent<Animator>().GetBool("IceShield")) yield break;
        tard.GetComponent<Animator>().SetBool("IceShield", true);
        yield return new WaitForSeconds(iceDuration);
        tard.GetComponent<Animator>().SetBool("IceShield", false);
        Instantiate(iceShardsPrefab, tard.transform);

    }
}
