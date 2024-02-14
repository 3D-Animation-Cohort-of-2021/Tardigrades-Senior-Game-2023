using System;
using System.Threading;
using Unity.VisualScripting;
using UnityEngine;
using UnityEngine.VFX;

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
        VisualEffect[] effects = GetComponentsInChildren<VisualEffect>();
        if (ignited)
        {
            foreach (VisualEffect effect in effects)
            {
                if (effect.visualEffectAsset.name == "FireTardBurn")
                {
                    effect.Play();
                }
            }
        }
        else
        {
            foreach (VisualEffect effect in effects)
            {
                if (effect.visualEffectAsset.name == "FireTardBurn")
                {
                    effect.Stop();
                }
            }
        }
    }

}
