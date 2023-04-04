using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class LargeObstacle : Obstacle
{
    private bool weakened;
    public Elem weakTo, strongTo, reactiveTo;
    public float fullDamageTaken;

    public UnityEvent weakenEvent, unWeakenEvent;
    new void Awake()
    {
        base.Awake();
        UnWeakenThisObstacle();
    }

    private void OnCollisionEnter(Collision collision)
    {
        if (collision.gameObject.GetComponent<TardigradeBase>())
        {
           Elem colType = collision.gameObject.GetComponent<TardigradeBase>().GetElementType();
           if (colType == weakTo)//obstacle attacked by stronger piglet
           {
               if(!weakened)
                   WeakenThisObstacle();
               ChangeHealth(fullDamageTaken*-1);
           }
           else if(colType==strongTo)//obstacle attacked by weaker piglet
           {
               if (weakened)
               {
                   Debug.Log("The weakened obstacle was immediately destroyed");
                   ReactAndDestroy();
               }
               else
               {
                   ChangeHealth((fullDamageTaken / 3)*-1);
                   collision.gameObject.GetComponent<TardigradeBase>().TakeGeneralDamage(damage);
                   Debug.Log("The obstacle took "+ (fullDamageTaken / 3)+" damage but the tardigrade took "+damage+" damage");
               }
           }
           else if (colType==reactiveTo && weakened)
           {
               UnWeakenThisObstacle();
               Debug.Log("The obstacle was reactivated!");
           }
        }
    }

    private void WeakenThisObstacle()
    {
        weakened = true;
        weakenEvent.Invoke();
    }

    private void UnWeakenThisObstacle()
    {
        weakened = false;
        unWeakenEvent.Invoke();
    }
}
