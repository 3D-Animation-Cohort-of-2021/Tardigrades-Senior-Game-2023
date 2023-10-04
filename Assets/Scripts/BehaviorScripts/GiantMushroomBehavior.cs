using System;
using System.Collections;
using System.Collections.Generic;
using Unity.VisualScripting;
using UnityEngine;
using UnityEngine.Events;

public class GiantMushroomBehavior : MonoBehaviour
{
    private float _hitPointsMax, _hitPointsCurrent;

    public UnityEvent destroyEvent, damageEvent;

    private Coroutine _invulnerableRoutine;

    public float invulnerableTime;

    private WaitForSeconds _wfs;

    public bool isVulnerable;

    private void Awake()
    {
        _wfs = new WaitForSeconds(invulnerableTime);
    }

    // Start is called before the first frame update
    void Start()
    {
        
    }

    public void TakeDamage()
    {
        if (!isVulnerable)
        {
            //play invincible effect or animation
            return;
        }
        MakeInvulnerable();
        //animate
        //play particles
        _hitPointsCurrent -= 1;
        if (_hitPointsCurrent <= 0)
        {
            StartCoroutine(DestructionSequence());
        }
    }

    private void MakeInvulnerable()
    {
        isVulnerable = false;
        _invulnerableRoutine = StartCoroutine(InvulnerableCooldown());
    }

    private IEnumerator InvulnerableCooldown()
    {
        yield return _wfs;
        isVulnerable = true;
    }

    private IEnumerator DestructionSequence()
    {
        yield return new WaitForSeconds(1f);
        // do the stuff when it blows up
    }
}
