using System;
using System.Threading;
using Unity.VisualScripting;
using UnityEngine;

public class FireTardigrade : TardigradeBase
{
    private float damage = 10;


    protected void Start()
    {
        primary.cooldown = 3;
        primary.activatable = true;
    }

    public override void PrimaryAbility()
    {
        if (!primary.activatable) return;
        base.PrimaryAbility();
        DamageOnEnter explosion = Instantiate(abilityPrefab, transform.position, Quaternion.identity).GetComponent<DamageOnEnter>();
        explosion.dmg = damage;
    }
}
