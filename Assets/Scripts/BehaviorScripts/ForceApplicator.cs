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
            int layerMask = 1 << 11;
            layerMask = ~layerMask;

            Vector3 start = _raycastOrigin.transform.position;
            Vector3 end = _navMeshAgents[i].transform.position;

            Debug.DrawRay(start, end - start);
            if (Physics.Raycast(start, end - start,
                out hit, Vector3.Distance(end, start) * 2f, layerMask))
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
