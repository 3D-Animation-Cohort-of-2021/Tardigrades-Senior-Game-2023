using System;
using System.Threading;
using Unity.VisualScripting;
using UnityEngine;

public class FireTardigrade : TardigradeBase
{

    public override void PrimaryAbility()
    {
        if (!_primary.activatable)
        {
            return;
        }
        
        _tarAnimator.SetTrigger("explode");

        base.PrimaryAbility();
        DamageOnEnter explosion = Instantiate(_abilityPrefab, transform.position, Quaternion.identity).GetComponent<DamageOnEnter>();
        explosion._damage = _damage;
    }
    
}
