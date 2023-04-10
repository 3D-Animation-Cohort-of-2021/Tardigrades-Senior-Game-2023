using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class StoneTardigrade : TardigradeBase
{

    protected override void ReactToStrong()
   {
      base.ReactToStrong();
      Debug.Log("The stone tardigrade is steadfast against the water");
   }

   protected override void ReactToWeak()
   {
      base.ReactToWeak();
      Debug.Log("The stone tardigrade is weakened by the fire trap");
   }

   public override void PrimaryAbility()
   {
      transform.rotation = followBehavior.pointObject.Rotation;
      Instantiate(abilityPrefab, transform.position + transform.forward, transform.rotation);
   }
}
