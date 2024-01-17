using System;
using System.Collections;
using System.Collections.Generic;
using Unity.VisualScripting;
using UnityEngine;
using UnityEngine.AI;
using UnityEngine.Events;
using UnityEngine.VFX;

public class GiantMushroomBehavior : MonoBehaviour, IDamageable, IReset
{
    public float _hitPointsMax, _hitPointsCurrent;

    public UnityEvent destroyEvent, damageEvent; 

    private Coroutine _invulnerableRoutine;

    public float invulnerableTime;

    private WaitForSeconds _wfs;

    public bool isVulnerable;

    public Animator mushroomAnim;
    
    public VisualEffect invulnerableEffect;
    
    public bool shouldReset { get; set; }

    private void Awake()
    {
        _wfs = new WaitForSeconds(invulnerableTime);
        isVulnerable = true;
    }

    // Start is called before the first frame update
    void Start()
    {
        _hitPointsCurrent = _hitPointsMax;
        shouldReset = true;
    }

    public void TakeDamage()
    {
        if (isVulnerable)
        {
            mushroomAnim.SetTrigger("TakeHit");
            _hitPointsCurrent -= 1;
            if (_hitPointsCurrent <= 0)
            {
                StartCoroutine(DestructionSequence());
            }
            else
            {
                damageEvent.Invoke();
                MakeInvulnerable();
            }
        }
    }

    private void MakeInvulnerable()
    {
        isVulnerable = false;
        invulnerableEffect.Play();
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

    

    public void Reset()
    {
        if(shouldReset)
        {
            _hitPointsCurrent = _hitPointsMax;
            invulnerableEffect.Stop();
            isVulnerable = true;
            GetComponent<NavMeshObstacle>().enabled = true;
            GetComponent<Collider>().enabled = true;
        }
    }
}
