using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.VFX;
using Random = UnityEngine.Random;

public class StoneTardigrade : TardigradeBase
{

    [SerializeField] private GameAction deathCall;
    public bool diamond = false;

    protected override void UpdateTardigrade()
    {
        base.UpdateTardigrade();

        VisualEffect[] effects = GetComponentsInChildren<VisualEffect>();
            
        foreach (VisualEffect effect in effects)
        {
            if (effect.visualEffectAsset.name == "HeavyTardFX")
            {
                _abilityEffect = effect;
            }
        }
    }

    protected override void ReactToStrong()
   {
      base.ReactToStrong();
      //Debug.Log("The stone tardigrade is steadfast against the water");
   }

   protected override void ReactToWeak()
   {
      base.ReactToWeak();
      //Debug.Log("The stone tardigrade is weakened by the fire trap");
   }

   public override void PrimaryAbility()
   {
        Quaternion stoneRotation = Quaternion.identity;
        Quaternion tardRotation = transform.rotation;
        Vector3 stoneEuler = new Vector3(0, Random.Range(0, 360), 0);
        stoneRotation.eulerAngles = stoneEuler;

        if (!_followBehavior._pointObject.willRotate)
        {
            Vector3 destination = _followBehavior._pointObject.Position;
            _followBehavior.CalculateAngleFromSquadCenter(out destination);
        }

        _tarAnimator.SetTrigger("rockWall");

        transform.rotation = _followBehavior._pointObject.Rotation;
        Instantiate(_abilityPrefab, transform.position + transform.forward, stoneRotation);
        transform.rotation = tardRotation;
   }

    public override void SecondaryAbility()
    {
        diamond = !diamond;

        if (diamond)
        {
            _abilityEffect.Play();
        }
        else
        {
            _abilityEffect.Stop();
        }
    }

}
