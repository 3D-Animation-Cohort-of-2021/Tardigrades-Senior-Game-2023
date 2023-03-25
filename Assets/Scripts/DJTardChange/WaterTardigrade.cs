using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WaterTardigrade : TardigradeBase
{
    private float iceDuration = 10;
    public ParticleSystem iceShardsPrefab;

    protected void Start()
    {
        primary.cooldown = 13;
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
        StartCoroutine(IceAbility());
        StartCoroutine(CooldownTracker(primary));
    }

    private IEnumerator IceAbility()
    {
        GetComponent<Animator>().SetBool("IceShield", true);
        yield return new WaitForSeconds(iceDuration);
        GetComponent<Animator>().SetBool("IceShield", false);
        Instantiate(iceShardsPrefab, transform.position, Quaternion.identity);

    }
}
