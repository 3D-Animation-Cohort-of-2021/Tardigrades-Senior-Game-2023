using System;
using Unity.VisualScripting;
using UnityEngine;
using UnityEngine.InputSystem.LowLevel;
using UnityEngine.InputSystem;
using UnityEngine.InputSystem.Users;
using MouseButton = UnityEngine.InputSystem.LowLevel.MouseButton;

//Parker Bennion
public class CursorGamepad : MonoBehaviour
{
    private Mouse virtualMouse;
    
    [SerializeField] private PlayerInput playerInput;

    [SerializeField] private RectTransform cursorTransform;
    
    [SerializeField] private float cursorSpeed = 1000;

    [SerializeField] private RectTransform canvasRectTransform;

    [SerializeField] private Canvas mainCanvas;

    private Camera mainCam;

    private bool previousMouseState;
    

    private void OnEnable()
    {
        mainCam = Camera.main;
        
        if (virtualMouse == null)
        {
            virtualMouse = (Mouse) InputSystem.AddDevice("VirtualMouse");
        }
        else if (!virtualMouse.added)
        {
            InputSystem.AddDevice(virtualMouse);
        }

        InputUser.PerformPairingWithDevice(virtualMouse, playerInput.user);

        if (cursorTransform!=null)
        {
            Vector2 position = cursorTransform.anchoredPosition;
            InputState.Change(virtualMouse.position,position);
        }

        InputSystem.onAfterUpdate += UpdateMotion;
    }

    private void OnDisable()
    {
        InputSystem.onAfterUpdate -= UpdateMotion;
    }

    private void UpdateMotion()
    {
        if (virtualMouse == null || Gamepad.current == null)
        {
            return;
        }

        Vector2 deltaValue = Gamepad.current.leftStick.ReadValue();
        deltaValue *= cursorSpeed * Time.deltaTime;

        Vector2 currentPosition = virtualMouse.position.ReadValue();
        Vector2 newPosition = currentPosition + deltaValue;

        newPosition.x = Mathf.Clamp(newPosition.x, 0, Screen.width);
        newPosition.y = Mathf.Clamp(newPosition.y, 0, Screen.height);
        
        InputState.Change(virtualMouse.position,newPosition);
        InputState.Change(virtualMouse.delta,deltaValue);

        bool aButtonIsPressed = Gamepad.current.aButton.IsPressed();

        if (previousMouseState != aButtonIsPressed)
        {
            virtualMouse.CopyState<MouseState>(out var mouseState);
            mouseState.WithButton(MouseButton.Left, aButtonIsPressed);
            InputState.Change(virtualMouse,mouseState);
            previousMouseState = aButtonIsPressed;
        }
        AnchorCursor(newPosition);
    }

    private void AnchorCursor(Vector2 position)
    {
        Vector2 anchoredPosition;

        RectTransformUtility.ScreenPointToLocalPointInRectangle(canvasRectTransform, position,
            mainCanvas.renderMode == RenderMode.ScreenSpaceOverlay ? null : mainCam, out anchoredPosition);

        cursorTransform.anchoredPosition = anchoredPosition;
    }

    
}
