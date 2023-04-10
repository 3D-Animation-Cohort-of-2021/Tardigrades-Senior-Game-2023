using UnityEngine;
using UnityEngine.AI;
using Random = UnityEngine.Random;

[RequireComponent(typeof(NavMeshAgent))]
public class FollowPointBehaviour : MonoBehaviour {
    public CustomTransform pointObject;

    private NavMeshAgent _navMeshAgent;

    private void Awake() {
        _navMeshAgent = GetComponent<NavMeshAgent>();
    }

    private void Start() {
        _navMeshAgent.speed = 10f;
        //Warp to closest navmesh position if needed
        //NavMesh.SamplePosition(transform.position, out NavMeshHit hit, 1.0f, 1);
        //_navMeshAgent.Warp(hit.position);
    }

    private void Update() {
        if (pointObject != null)
        {
            Vector3 destination = pointObject.Position;
            
            if (pointObject.Center !=  null && pointObject.willRotate)
            {
                CalculateAngle(out destination);
            }

            _navMeshAgent.destination = destination + pointObject.Parent.position;
        }
    }

    private void CalculateAngle(out Vector3 destination)
    {
        destination = pointObject.Position;

        if (pointObject.Center !=  null)
            {
                float directionModifier = 1;

                Vector3 normalizedParent = Vector3.Normalize(pointObject.Parent.position - pointObject.Center.position);

                if(normalizedParent.x < 0)
                {
                    directionModifier = -1;
                }

                float angle = (Mathf.Acos(normalizedParent.z) * directionModifier);
                Quaternion q = new Quaternion();

                q.eulerAngles = new Vector3(0f, Mathf.Rad2Deg * angle, 0f);
                pointObject.Rotation = q;

                float tempZ = destination.z * Mathf.Cos(angle) - destination.x * Mathf.Sin(angle);
                float tempX = destination.z * Mathf.Sin(angle) + destination.x * Mathf.Cos(angle);

                destination.z = tempZ;
                destination.x = tempX;
            }
    }
}
