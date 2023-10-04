using UnityEngine;
using UnityEngine.AI;
using Random = UnityEngine.Random;

[RequireComponent(typeof(NavMeshAgent))]
public class FollowPointBehaviour : MonoBehaviour {
    public CustomTransform pointObject;

    private NavMeshAgent _navMeshAgent;
    private Animator _tarAnimator;

    private void Awake() {
        _navMeshAgent = GetComponent<NavMeshAgent>();
        _tarAnimator = GetComponent<Animator>();
    }

    private void Start() {
        _navMeshAgent.speed = (_navMeshAgent.speed == 0) ? _navMeshAgent.speed : 10;
        //Warp to closest navmesh position if needed
        //NavMesh.SamplePosition(transform.position, out NavMeshHit hit, 1.0f, 1);
        //_navMeshAgent.Warp(hit.position);
    }

    private void FixedUpdate() {
        if (pointObject != null)
        {
            Vector3 destination = pointObject.Position;
            
            if (pointObject.Center !=  null && pointObject.willRotate)
            {
                CalculateAngleFromHordeCenter(out destination);
            }

            _navMeshAgent.destination = destination + pointObject.Parent.position;
        }
        
        //Walk anim driver
        _tarAnimator.SetFloat("speedPercent", (_navMeshAgent.velocity.magnitude / _navMeshAgent.speed));
    }

    private void CalculateAngleFromHordeCenter(out Vector3 destination)
    {
        CalculateAngle(out destination, pointObject.Parent.position, pointObject.Center.position);
    }

    public void CalculateAngleFromSquadCenter(out Vector3 destination)
    {
        CalculateAngle(out destination, pointObject.Center.position, pointObject.Center.position - pointObject.Position);
    }

    private void CalculateAngle(out Vector3 destination, Vector3 centerPoint, Vector3 directionPoint)
    {
        destination = pointObject.Position;

        if (pointObject.Center != null)
        {
            float directionModifier = 1;

            Vector3 normalizedParent = Vector3.Normalize(centerPoint - directionPoint);

            if (normalizedParent.x < 0)
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
