using UnityEngine;
using UnityEngine.InputSystem;

public class CHatSolution : MonoBehaviour
{
    private InputAction moveAction;
    private InputAction jumpAction;
    private Gamepad gamepad;

    private void Awake()
    {
        gamepad = InputSystem.GetDevice<Gamepad>();
        //moveAction = InputSystem.GetAction<Vector2>("Move");
        //jumpAction = InputSystem.GetAction<float>("Jump");
    }

    private void OnEnable()
    {
        moveAction.Enable();
        jumpAction.Enable();
    }

    private void OnDisable()
    {
        moveAction.Disable();
        jumpAction.Disable();
    }

    private void Update()
    {
        float moveX = moveAction.ReadValue<Vector2>().x;
        float moveY = moveAction.ReadValue<Vector2>().y;
        float jump = jumpAction.ReadValue<float>();

        // Use the input values in your game logic
    }
}