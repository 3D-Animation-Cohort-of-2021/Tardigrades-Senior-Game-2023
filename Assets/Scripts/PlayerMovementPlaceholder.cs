using UnityEngine;

public class PlayerMovementPlaceholder : MonoBehaviour {
    private CharacterController _controller;
    private float _verticalAxis, _horizontalAxis;
    private Vector3 _moveDir;
    private void Awake() {
        _controller = GetComponent<CharacterController>();
        _moveDir = Vector3.zero;
    }

    private void Update() {
        _verticalAxis = Input.GetAxis("Vertical");
        _horizontalAxis = Input.GetAxis("Horizontal");
        _moveDir.x = _horizontalAxis;
        _moveDir.z = _verticalAxis;
        if (_verticalAxis != 0 || _horizontalAxis != 0) {
            _moveDir.Normalize();
            _controller.Move(_moveDir * (Time.deltaTime * 10));
        }
    }
}
