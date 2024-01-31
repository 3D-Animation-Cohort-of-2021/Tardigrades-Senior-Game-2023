using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;
using static Unity.VisualScripting.Dependencies.Sqlite.SQLite3;

public class LargeObstacle : Obstacle
{
    private bool _weakened;
    

    public UnityEvent weakenEvent, unWeakenEvent;
    new void Awake()
    {
        base.Awake();
        UnWeakenThisObstacle();
    }

    //private void OnTriggerEnter(Collider collision)
    //{
    //    Debug.Log("Collision");
    //    if (collision.gameObject.GetComponent<TardigradeBase>())
    //    {
    //       Elem colType = collision.gameObject.GetComponent<TardigradeBase>().GetElementType();
    //       if (colType == _weakTo)//obstacle attacked by stronger piglet
    //       {
    //           if(!_weakened)
    //               WeakenThisObstacle();
    //           ChangeHealth(_fullDamageTaken*-1);
    //       }
    //       else if(colType==_strongTo)//obstacle attacked by weaker piglet
    //       {
    //           if (_weakened)
    //           {
    //               Debug.Log("The weakened obstacle was immediately destroyed");
    //               ReactAndDestroy();
    //           }
    //           else
    //           {
    //               ChangeHealth((_fullDamageTaken / 3)*-1);
    //           }
    //       }
    //       else if (colType==_reactiveTo)
    //       {
    //           _currentHealth = _totalHealth;
    //           if(_weakened)
    //           {
    //               UnWeakenThisObstacle();
    //           }
    //           Debug.Log("The obstacle was reactivated!");
    //       }
    //    }
    //}

    private void WeakenThisObstacle()
    {
        _weakened = true;
        weakenEvent.Invoke();
    }

    private void UnWeakenThisObstacle()
    {
        _weakened = false;
        unWeakenEvent.Invoke();
    }

    public override void Damage(float dmgNum, Elem dmgType, DeathType deathType = DeathType.Default)
    {
        Effectiveness effectiveness = EffectiveTable.DetermineEffectiveness(_obstacleElement, dmgType);

        float adjustedDamage = EffectiveTable.CalculateEffectiveDMG(_obstacleElement, dmgType, dmgNum);

        if (effectiveness == Effectiveness.Effective)//obstacle attacked by stronger piglet
        {
            if (!_weakened)
            {
                WeakenThisObstacle();
            }
                
            ChangeHealth(adjustedDamage * -1);
        }
        else if (effectiveness == Effectiveness.Ineffective)//obstacle attacked by weaker piglet
        {
            if (_weakened)
            {
                Debug.Log("The weakened obstacle was immediately destroyed");
                ReactAndDestroy();
            }
            else
            {
                ChangeHealth(adjustedDamage * -1);
            }
        }
        else if (effectiveness == Effectiveness.Reactive)
        {
            _currentHealth = _totalHealth;
            if (_weakened)
            {
                UnWeakenThisObstacle();
            }
            Debug.Log("The obstacle was reactivated!");
        }
        else
        {
            ChangeHealth(adjustedDamage * -1);
        }
    }
}
