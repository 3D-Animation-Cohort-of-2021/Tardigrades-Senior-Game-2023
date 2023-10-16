using System.Collections;
using System.Collections.Generic;
using Unity.VisualScripting;
using UnityEngine;
using UnityEngine.AI;


public class ForceApplicator : MonoBehaviour
{
    [Range(0f, 5f)]
    public float _forceStrength = 0;
    public Transform _raycastOrigin;

    private Vector3 _forceDirection = Vector3.forward;
    private List<NavMeshAgent> _navMeshAgents = new List<NavMeshAgent>();

    private Coroutine pushRoutine;
    private WaitForFixedUpdate waitForFixedUpdate = new WaitForFixedUpdate();

    private void Awake()
    {
        _forceDirection *= _forceStrength;
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

        if(_navMeshAgents.Count == 0 && pushRoutine != null)
        {
            StopCoroutine(pushRoutine);
            pushRoutine = null;
        }
    }

    private IEnumerator PushCoroutine()
    {
        RaycastHit hit;
        for (int i = 0; i < _navMeshAgents.Count; i++)
        {
            if (Physics.Raycast(_raycastOrigin.position, Vector3.MoveTowards(_raycastOrigin.position, _navMeshAgents[i].transform.position, 1f),
                out hit, Vector3.Distance(transform.position, _navMeshAgents[i].transform.position)))
            {
                NavMeshAgent navMeshAgent;
                if (hit.rigidbody != null && hit.rigidbody.gameObject.TryGetComponent<NavMeshAgent>( out navMeshAgent))
                {
                    _navMeshAgents[i].Move(transform.TransformDirection(_forceDirection * Time.deltaTime));
                }
            }
        }
        yield return waitForFixedUpdate;

        pushRoutine = StartCoroutine(PushCoroutine());
    }




}
