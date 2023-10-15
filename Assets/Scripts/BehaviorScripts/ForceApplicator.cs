using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class ForceApplicator : MonoBehaviour
{
    [Range(0f, 5f)]
    public float _forceStrength = 0;

    private Vector3 _forceDirection = Vector3.forward;
    private List<NavMeshAgent> _navMeshAgents = new List<NavMeshAgent>();

    private Coroutine pushRoutine;
    private WaitForFixedUpdate waitForFixedUpdate = new WaitForFixedUpdate();

    private void Awake()
    {
        _forceDirection *= _forceStrength * 0.01f;
    }
    private void OnTriggerEnter(Collider other)
    {
        NavMeshAgent selectedNavmeshAgent = other.GetComponentInChildren<NavMeshAgent>();

        if(selectedNavmeshAgent != null)
        {
            _navMeshAgents.Add(selectedNavmeshAgent);
        }

        if(pushRoutine == null)
        {
            pushRoutine = StartCoroutine(PushCoroutine());
        }
    }

    private void OnTriggerExit(Collider other)
    {
        NavMeshAgent selectedNavmeshAgent = other.GetComponentInChildren<NavMeshAgent>();

        if (selectedNavmeshAgent != null)
        {
            _navMeshAgents.Remove(selectedNavmeshAgent);
        }

        if(_navMeshAgents.Count == 0)
        {
            StopCoroutine(pushRoutine);
            pushRoutine = null;
        }
    }

    private IEnumerator PushCoroutine()
    {
        for(int i = 0; i < _navMeshAgents.Count; i++)
        {
            _navMeshAgents[i].Move(transform.TransformDirection(_forceDirection));
        }
        yield return waitForFixedUpdate;

        pushRoutine = StartCoroutine(PushCoroutine());
    }




}
