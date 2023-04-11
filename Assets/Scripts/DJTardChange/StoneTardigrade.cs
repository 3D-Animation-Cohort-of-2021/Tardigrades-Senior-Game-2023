using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Random = UnityEngine.Random;

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
        Quaternion stoneRotation = Quaternion.identity;
        Quaternion tardRotation = transform.rotation;
        Vector3 stoneEuler = new Vector3(0, Random.Range(0, 360), 0);
        stoneRotation.eulerAngles = stoneEuler;

        transform.rotation = followBehavior.pointObject.Rotation;
        Instantiate(abilityPrefab, transform.position + transform.forward, stoneRotation);
        transform.rotation = tardRotation;
   }
}
