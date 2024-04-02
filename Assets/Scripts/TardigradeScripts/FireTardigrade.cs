using System;
using System.Threading;
using Unity.VisualScripting;
using UnityEngine;
using UnityEngine.VFX;

public class FireTardigrade : TardigradeBase
{
    public bool ignited = false;
    
    protected override void UpdateTardigrade()
    {
        base.UpdateTardigrade();

        VisualEffect[] effects = GetComponentsInChildren<VisualEffect>();
        foreach (VisualEffect effect in effects)
        {
            if (effect.visualEffectAsset.name == "FireTardBurn")
            {
                _abilityEffect = effect;
            }
        }
    }

    public override void PrimaryAbility()
    {

        base.PrimaryAbility();
        DamageOnEnter explosion = Instantiate(_abilityPrefab, transform.position, Quaternion.identity).GetComponent<DamageOnEnter>();
        explosion._damage = _damage;
        
        _tarAnimator.SetTrigger("explode");
    }

    public override void SecondaryAbility()
    {
        base.SecondaryAbility();
        ignited = !ignited;

        if (ignited)
        {     
            _abilityEffect.Play();
            audioSecondaryStart.Post(gameObject);
        }
        else
        {
            _abilityEffect.Stop();
            audioSecondaryEnd.Post(gameObject);
        }
    }

}
