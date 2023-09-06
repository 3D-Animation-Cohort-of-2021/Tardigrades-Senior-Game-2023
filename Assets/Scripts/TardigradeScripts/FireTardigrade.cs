using System;
using System.Threading;
using Unity.VisualScripting;
using UnityEngine;

public class FireTardigrade : TardigradeBase
{

    protected void Start()
    {
        _primary.cooldown = 3;
        _primary.activatable = true;
    }

    public override void PrimaryAbility()
    {
        if (!_primary.activatable)
        {
            return;
        }

        base.PrimaryAbility();
        DamageOnEnter explosion = Instantiate(_abilityPrefab, transform.position, Quaternion.identity).GetComponent<DamageOnEnter>();
        explosion._damage = _damage;
        SetStatus(Status.Burning, 3f);
    }
}