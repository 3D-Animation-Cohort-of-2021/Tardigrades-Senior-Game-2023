using System;
using System.Threading;
using Unity.VisualScripting;
using UnityEngine;

public class FireTardigrade : TardigradeBase
{
    public ParticleSystem explosionPrefab;
    private float damage = 10;

    protected void Start()
    {
        primary.cooldown = 3;
        primary.activatable = true;
    }

    protected override void ReactToStrong()
    {
        base.ReactToStrong();
        //Debug.Log("The fire tardigrade is too quick and hot for the stone trap");
    }

    protected override void ReactToWeak()
    {
        base.ReactToWeak();
        //Debug.Log("The fire tardigrade is nearly put out by the water trap");
    }

    public override void PrimaryAbility()
    {
        if (!primary.activatable) return;
        DamageOnEnter explosion = Instantiate(explosionPrefab, transform.position, Quaternion.identity)
            .GetComponent<DamageOnEnter>();
        explosion.dmg = damage;
        StartCoroutine(CooldownTracker(primary));
    }
}
