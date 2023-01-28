using UnityEngine;
[RequireComponent(typeof(Rigidbody))]
public class FollowPointBehaviour : MonoBehaviour {
    public GameObject pointObject;

    private Rigidbody _rigidbody;

    private void Awake() {
        _rigidbody = GetComponent<Rigidbody>();
    }

    void Update() {
        Vector3 pointPosition = pointObject.transform.position;
        Vector3 objPosition = gameObject.transform.position;
        Vector3 moveDir = new Vector3((pointPosition.x - objPosition.x), (pointPosition.y - objPosition.y),
            (pointPosition.z - objPosition.z));
        float distanceToPoint = moveDir.magnitude;
        _rigidbody.MovePosition(pointPosition);
        if (distanceToPoint <= .1f) {
            _rigidbody.velocity = Vector3.zero;
        }
    }
}
