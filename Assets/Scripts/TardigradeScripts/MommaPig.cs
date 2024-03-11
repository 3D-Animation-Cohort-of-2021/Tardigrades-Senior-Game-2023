using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class MommaPig : MonoBehaviour
{
    public Animator _tarAnimator;
    public NavMeshAgent _navMeshAgent;
    public GameObject targetObject;
    public float maxDistance;
    private bool isChecking;

    private void Awake()
    {
        _tarAnimator = GetComponent<Animator>();
        _navMeshAgent = GetComponent<NavMeshAgent>();
    }

    private void Start()
    {
        isChecking = true;
        StartCoroutine(TeleportCheck());
    }

    void FixedUpdate()
    {
        _navMeshAgent.destination = targetObject.transform.position;
        _tarAnimator.SetFloat("speedPercent", (_navMeshAgent.velocity.magnitude / _navMeshAgent.speed));
    }

    private IEnumerator TeleportCheck()
    {
        WaitForSeconds wfs = new WaitForSeconds(1f);
        while (isChecking)
        {
            if (Vector3.Distance(gameObject.transform.position, targetObject.transform.position) >= maxDistance)
            {
                _navMeshAgent.Warp(targetObject.transform.position);
            }
            yield return wfs;
        }
    }
}
