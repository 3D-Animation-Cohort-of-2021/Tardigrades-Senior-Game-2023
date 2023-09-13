using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
[RequireComponent(typeof(BoxCollider))]
public class DestructibleObstacle : Obstacle
{
    public override void Damage(float dmgNum, Elem dmgType)
    {
        if (dmgType == Elem.Fire)
        {
            ReactAndDestroy();
        }
    }
    
    
}
