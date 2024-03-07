using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.InputSystem;

public class InputSwapDetect : MonoBehaviour
{
    public GameAction changeToMnK, changeToController;
    public bool usingMnK, currentIsMnK;
    // Start is called before the first frame update
    void Awake()
    {
        InputSystem.onActionChange += InputActionChangeCallback;
    }
    private void InputActionChangeCallback(object obj, InputActionChange change)
    {
        if (change == InputActionChange.ActionPerformed)
        {
            InputAction receivedInputAction = (InputAction) obj;
            InputDevice lastDevice = receivedInputAction.activeControl.device;
            
            usingMnK = lastDevice.name.Equals("Keyboard") || lastDevice.name.Equals("Mouse");
            if (currentIsMnK != usingMnK)
            {
                if (usingMnK)
                {
                    //changeToMnK.raise();
                    Debug.Log("Changing to keyboard");
                    Cursor.lockState = CursorLockMode.None;
                }
                else
                {
                    //changeToController.raise();
                    Debug.Log("Changing to controller");
                    Cursor.lockState = CursorLockMode.Locked;
                }
                currentIsMnK = usingMnK;
            }
            //If needed we could check for "XInputControllerWindows" or "DualShock4GamepadHID"
            //Maybe if it Contains "controller" could be xbox layout and "gamepad" sony? More investigation needed
        }
    }
    // Update is called once per frame
    void Update()
    {
        
    }
}
