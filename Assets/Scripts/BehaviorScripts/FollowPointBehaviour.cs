using UnityEngine;
using UnityEngine.AI;
using Random = UnityEngine.Random;

[RequireComponent(typeof(NavMeshAgent))]
public class FollowPointBehaviour : MonoBehaviour {
    public CustomTransform _pointObject;

    private NavMeshAgent _navMeshAgent;
    private Animator _tarAnimator;

    private void Awake() {
        _navMeshAgent = GetComponent<NavMeshAgent>();
        _tarAnimator = GetComponent<Animator>();
    }

    private void Start() {
        _navMeshAgent.speed = (_navMeshAgent.speed == 0) ? 5 : _navMeshAgent.speed;
        //Warp to closest navmesh position if needed
        //NavMesh.SamplePosition(transform.position, out NavMeshHit hit, 1.0f, 1);
        //_navMeshAgent.Warp(hit.position);
    }

    private void FixedUpdate() {
        if (_pointObject != null)
        {
            Vector3 destination = _pointObject.Position;
            
            if (_pointObject.Center !=  null && _pointObject.willRotate)
            {
                CalculateAngleFromHordeCenter(out destination);
            }

            _navMeshAgent.destination = (destination + _pointObject.Parent.position);
        }
        
        //Walk anim driver
        _tarAnimator.SetFloat("speedPercent", (_navMeshAgent.velocity.magnitude / _navMeshAgent.speed));
    }

    private void CalculateAngleFromHordeCenter(out Vector3 destination)
    {
        CalculateAngle(out destination, _pointObject.Parent.position, _pointObject.Center.position);
    }

    public void CalculateAngleFromSquadCenter(out Vector3 destination)
    {
        CalculateAngle(out destination, _pointObject.Center.position, _pointObject.Center.position - _pointObject.Position);
    }

    private void CalculateAngle(out Vector3 destination, Vector3 centerPoint, Vector3 directionPoint)
    {
        destination = _pointObject.Position;

        if (_pointObject.Center != null)
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
            _pointObject.Rotation = q;

            float tempZ = destination.z * Mathf.Cos(angle) - destination.x * Mathf.Sin(angle);
            float tempX = destination.z * Mathf.Sin(angle) + destination.x * Mathf.Cos(angle);

            destination.z = tempZ;
            destination.x = tempX;
        }
    }
}
