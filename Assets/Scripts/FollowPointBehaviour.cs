using UnityEngine;
using UnityEngine.AI;
using Random = UnityEngine.Random;

[RequireComponent(typeof(NavMeshAgent))]
public class FollowPointBehaviour : MonoBehaviour {
    public GameObject pointObject;
    
    private Vector3 _pointPosition;
    private NavMeshAgent _navMeshAgent;

    private void Awake() {
        _navMeshAgent = GetComponent<NavMeshAgent>();
    }

    private void Start() {
        _navMeshAgent.speed = Random.Range(10f, 15f);
        //Warp to closest navmesh position if needed
        //NavMesh.SamplePosition(transform.position, out NavMeshHit hit, 1.0f, 1);
        //_navMeshAgent.Warp(hit.position);
    }

    private void Update() {
        _navMeshAgent.destination = pointObject.transform.position;
    }
}
