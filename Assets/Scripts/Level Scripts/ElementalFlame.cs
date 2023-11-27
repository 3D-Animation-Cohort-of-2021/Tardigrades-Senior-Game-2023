using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;
using UnityEngine.Events;
using UnityEngine.VFX;

[RequireComponent(typeof(SphereCollider))]
[RequireComponent(typeof(NavMeshAgent))]
public class ElementalFlame : MonoBehaviour, IDamageable
{
    private SphereCollider sCollider;
    private Vector3 adjustedScale;
    private float sphereRadius;
    private WaitForSeconds wfsd, wfsf;
    public float followTickTime, damageTickTime, damage;
    private Collider[] cols;
    public bool isRunning, hasTarget;//has target means it's following a squad
    private NavMeshAgent nvmAgent;
    public GameObject currentFollowTarget, fallbackFollowTarget;
    private Coroutine followingTarget, damageRoutine;
    public UnityEvent resetEvent;

    public Elem flameType;

    public VisualEffect thisVfx;
    // Start is called before the first frame update
    private void Awake()
    {
        sCollider = GetComponent<SphereCollider>();
        sCollider.isTrigger = true;
        adjustedScale = transform.lossyScale;
        sphereRadius = sCollider.radius * Mathf.Max(adjustedScale.x, adjustedScale.y, adjustedScale.z);
        wfsd = new WaitForSeconds(damageTickTime);
        wfsf = new WaitForSeconds(followTickTime);
        nvmAgent = GetComponent<NavMeshAgent>();
        currentFollowTarget = fallbackFollowTarget;
        isRunning = true;
    }

    private void Start()
    {
        ResetToStart();
        damageRoutine = StartCoroutine(DamageTick());
    }

    private IEnumerator DamageTick()
    {
        while(isRunning)
        {
            yield return wfsd;
            DamageArea();
        }
    }
    
    private void DamageArea()
    {
        cols = Physics.OverlapSphere(transform.position, sphereRadius);
        foreach (Collider col in cols)
        {
            if (col.TryGetComponent(out TardigradeBase tard))
            {
                if (!isImmune(tard.GetElementType()))
                {
                    tard.Damage(damage, flameType);
                }
            }
        }
    } public bool isImmune(Elem tardType)
    {
        return (EffectiveTable.DetermineEffectiveness(tardType, flameType) == Effectiveness.Ineffective);
    }

    public void Damage(float dmgNum, Elem dmgType)
    {
        if (EffectiveTable.DetermineEffectiveness(flameType, dmgType) == Effectiveness.Reactive)
            ResetToStart();
    }
/// <summary>
/// //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////AI AI AI AI AI AI AI AI AI AI

   

    private IEnumerator FollowRoutine()
    {
        while (isRunning)
        {
            yield return wfsf;
            nvmAgent.SetDestination(currentFollowTarget.transform.position);
        }
    }

    public void ResetToStart()
    {
        if(followingTarget!=null)
            StopCoroutine(followingTarget);
        currentFollowTarget = fallbackFollowTarget;
        transform.position = fallbackFollowTarget.transform.position;
        nvmAgent.enabled = false;
        hasTarget = false;
    }
    
    public void StartFollowing(GameObject target)
    {
        nvmAgent.enabled = true;
        currentFollowTarget = target;
        followingTarget ??= StartCoroutine(FollowRoutine());
        hasTarget = true;
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.TryGetComponent(out SquadBrain brain))
        {
            if(!hasTarget)
                StartFollowing(brain.gameObject);
        }
    }
}
