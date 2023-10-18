using System;
using System.Collections;
using System.Collections.Generic;
using Unity.VisualScripting;
using UnityEngine;
using UnityEngine.Events;

public class GiantMushroomBehavior : MonoBehaviour, IDamageable
{
    public float _hitPointsMax, _hitPointsCurrent;

    public UnityEvent destroyEvent, damageEvent; 

    private Coroutine _invulnerableRoutine;

    public float invulnerableTime;

    private WaitForSeconds _wfs;

    public bool isVulnerable;

    private void Awake()
    {
        _wfs = new WaitForSeconds(invulnerableTime);
        isVulnerable = true;
    }

    // Start is called before the first frame update
    void Start()
    {
        _hitPointsCurrent = _hitPointsMax;
    }

    public void TakeDamage()
    {
        if (isVulnerable)
        {
            damageEvent.Invoke();
            //play invincible effect or animation
            MakeInvulnerable();
            //animate
            //play particles
            _hitPointsCurrent -= 1;
            if (_hitPointsCurrent <= 0)
            {
                StartCoroutine(DestructionSequence());
            }
        }
    }

    private void MakeInvulnerable()
    {
        isVulnerable = false;
        Debug.Log("Mushroom becomes invulnerable");
        _invulnerableRoutine = StartCoroutine(InvulnerableCooldown());
    }

    private IEnumerator InvulnerableCooldown()
    {
        yield return _wfs;
        isVulnerable = true;
        Debug.Log("Mushroom is vulnerable again");
    }

    private IEnumerator DestructionSequence()
    {
        // do the stuff when it blows up
        yield return new WaitForSeconds(1f);
        destroyEvent.Invoke();
        Debug.Log("Mushroom destroyed");
    }

    public void Damage(float dmgNum, Elem dmgType)
    {
        TakeDamage();
    }
}
