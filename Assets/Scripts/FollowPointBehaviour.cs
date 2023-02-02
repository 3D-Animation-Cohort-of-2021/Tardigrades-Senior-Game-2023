using UnityEngine;
[RequireComponent(typeof(Rigidbody))]
public class FollowPointBehaviour : MonoBehaviour {
    public GameObject pointObject;
    public float smoothTimeMax = .15f;
    public float smoothTime;
    public float speed = 10f;
    Vector3 velocity;

    private Vector3 _pointPosition;

    private void Start() {
        smoothTime = (Random.value * smoothTimeMax) + .01f;
    }

    void Update() {
        _pointPosition = pointObject.transform.position;
        transform.position =
            Vector3.SmoothDamp(transform.position, _pointPosition, ref velocity, smoothTime, speed);
    }
}
