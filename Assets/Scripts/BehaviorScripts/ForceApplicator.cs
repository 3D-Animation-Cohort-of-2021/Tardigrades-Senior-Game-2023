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
    private List<NavMeshAgent> _pushableAgents = new List<NavMeshAgent>();

    private Coroutine pushRoutine;
    private WaitForFixedUpdate waitForFixedUpdate = new WaitForFixedUpdate();

    private void Awake()
    {
        _forceDirection *= _forceStrength;
    }
    private void OnTriggerEnter(Collider other)
    {
        NavMeshAgent selectedNavmeshAgent = other.GetComponentInChildren<NavMeshAgent>();
        bool pushableNavmesh = false;

        if (selectedNavmeshAgent != null)
        {
            _navMeshAgents.Add(selectedNavmeshAgent);
            pushableNavmesh = CheckPushable(selectedNavmeshAgent);
        }

        if (pushableNavmesh)
        {
            _pushableAgents.Add(selectedNavmeshAgent);

            if (pushRoutine == null)
            {
                pushRoutine = StartCoroutine(PushCoroutine());
            }
        }

    }

    private void OnTriggerExit(Collider other)
    {
        NavMeshAgent selectedNavmeshAgent = other.GetComponentInChildren<NavMeshAgent>();

        if (selectedNavmeshAgent != null)
        {
            _pushableAgents.Remove(selectedNavmeshAgent);
            _navMeshAgents.Remove(selectedNavmeshAgent);
        }

        if(_pushableAgents.Count == 0 && pushRoutine != null)
        {
            StopCoroutine(pushRoutine);
            pushRoutine = null;
        }
    }

    private IEnumerator PushCoroutine()
    {
        RaycastHit hit;
        for (int i = 0; i < _pushableAgents.Count; i++)
        {
            int layerMask = 1 << 11;
            layerMask = ~layerMask;

            Vector3 start = _raycastOrigin.transform.position;
            Vector3 end = _pushableAgents[i].transform.position;

            Debug.DrawRay(start, end - start);
            if (Physics.Raycast(start, end - start,
                out hit, Vector3.Distance(end, start) * 2f, layerMask))
            {
                NavMeshAgent navMeshAgent;
                if (hit.rigidbody != null && hit.rigidbody.gameObject.TryGetComponent<NavMeshAgent>( out navMeshAgent) && navMeshAgent == _pushableAgents[i])
                {
                    _pushableAgents[i].Move(transform.TransformDirection(_forceDirection * Time.deltaTime));
                }
            }
        }
        yield return waitForFixedUpdate;

        UpdatePushables();

        pushRoutine = StartCoroutine(PushCoroutine());
    }

    private bool CheckPushable(NavMeshAgent navMeshAgent)
    {
        bool pushableNavmesh = false;
        NavMeshAgent selectedNavmeshAgent = navMeshAgent;

        if (selectedNavmeshAgent != null)
        {
            pushableNavmesh = true;
        }

        if (pushableNavmesh && (selectedNavmeshAgent.TryGetComponent<StoneTardigrade>(out StoneTardigrade stoneTardigrade) && stoneTardigrade.diamond))
        {
            pushableNavmesh = false;
        }
        else if (pushableNavmesh && selectedNavmeshAgent.TryGetComponent<SquadBrain>(out SquadBrain squadBrain) && squadBrain._squadType == Elem.Stone && squadBrain.GetToggledStatus())
        {
            pushableNavmesh = false;
        }

        return pushableNavmesh;
    }

    private void UpdatePushables()
    {
        for (int i = _navMeshAgents.Count - 1; i >= 0; i--)
        {
            bool pushableNavmesh = CheckPushable(_navMeshAgents[i]);

            

            if (!pushableNavmesh)
            {
                _pushableAgents.Remove(_navMeshAgents[i]);
            }
            else if (!_pushableAgents.Contains(_navMeshAgents[i]))
            {
                _pushableAgents.Add(_navMeshAgents[i]);
            }
        }
    }




}
