using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
[RequireComponent(typeof(BoxCollider))]
public class DestructibleObstacle : Obstacle
{
    private void OnCollisionEnter(Collision collision)
    {
        if (collision.gameObject.GetComponent<TardigradeBase>())
        {
            Elem tardElement = collision.gameObject.GetComponent<TardigradeBase>().GetElementType();
            if (IsWeak(tardElement)==-1)
            {
                Debug.Log("The object clears because it is weak");
                ReactAndDestroy();
            }
        }
    }
    
    
}
