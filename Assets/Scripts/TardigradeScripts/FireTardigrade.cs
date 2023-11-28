using System;
using System.Threading;
using Unity.VisualScripting;
using UnityEngine;

public class FireTardigrade : TardigradeBase
{

    public bool ignited = false;

    public override void PrimaryAbility()
    {

        base.PrimaryAbility();
        DamageOnEnter explosion = Instantiate(_abilityPrefab, transform.position, Quaternion.identity).GetComponent<DamageOnEnter>();
        explosion._damage = _damage;
        
        _tarAnimator.SetTrigger("explode"); ;
    }

    public override void SecondaryAbility()
    {
        base.SecondaryAbility();
        ignited = !ignited;
    }

}
