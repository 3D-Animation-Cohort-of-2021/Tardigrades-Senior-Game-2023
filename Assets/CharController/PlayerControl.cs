using System.Reflection;
using UnityEngine.InputSystem;
using UnityEngine;
using UnityEngine.Events;
//Made By Parker Bennion

public class PlayerControl : MonoBehaviour
{
    public DebugInputSO debugInput;
    private CharacterController charController;
    private Vector3 leftStickMovement, triggerRotation, rightStickMovement;
    public SO_SquadData SquadsMoveCommands;
    public UnityEvent squadChangeNext, squadChangePrevious, mutateEvent, primaryAbilityEvent;

    void Awake()
    {
        for (int i = 0; i < debugInput.map.actions.Count; i++)
        {
            debugInput.map.actions[i].started += InputReceived;
            debugInput.map.actions[i].performed += InputReceived;
            debugInput.map.actions[i].canceled += InputReceived;

            debugInput.map.actions[i].Enable();
        }

        SquadsMoveCommands.SetSquadNumber(0);
        charController = GetComponent<CharacterController>();
        
    }

    public void InputReceived(InputAction.CallbackContext context)
    {
        string tempFuncion;
        if (context.action.name != null)
        {
            tempFuncion = context.action.name;
            if (GetType().GetMethod(tempFuncion) != null)
            {
                MethodInfo method = GetType().GetMethod(tempFuncion);
                method.Invoke(this, new object[] { context });
            }
        }
    }

    public void FixedUpdate()
    {
        //MoveHoard
        charController.Move((leftStickMovement * (Time.deltaTime * 10)));

        //MoveSquad
        
        //RotateSquad
        transform.Rotate(triggerRotation * (Time.deltaTime * 50));
    }


    public void
        CHANGEME(InputAction.CallbackContext context) //change change me to the exact name of the control added in the debug input scriptable object
    {
        if (context.started)
        {
            Debug.Log("Started" + "CHANGEME");
        }

        if (context.canceled)
        {
            Debug.Log("Canceled" + "CHANGEME");
        }

        if (context.performed)
        {
            Debug.Log("Performed" + "CHANGEME");
        }
    }

    public void MoveHoard(InputAction.CallbackContext context)
    {
        leftStickMovement.x = context.ReadValue<Vector2>().x;
        leftStickMovement.z = context.ReadValue<Vector2>().y;
    }
    public void PreviousSquad(InputAction.CallbackContext context)
    {
        if (context.started)
        {
            
            SquadsMoveCommands.SubtractSquadNumber();
        }

        if (context.canceled)
        {
            squadChangePrevious.Invoke();
        }

    }
    public void NextSquad(InputAction.CallbackContext context)
    {
        if (context.started)
        {
            
            SquadsMoveCommands.addSquadNumber();
        }

        if (context.canceled)
        {
            squadChangeNext.Invoke();
        }
    }
    public void MoveSquad(InputAction.CallbackContext context)
    {
        rightStickMovement.x = context.ReadValue<Vector2>().x;
        rightStickMovement.z = context.ReadValue<Vector2>().y;
        SquadsMoveCommands.vectorThree = rightStickMovement;

    }
    public void RotateClockwise(InputAction.CallbackContext context)
    {
        if (context.performed)
        {
            triggerRotation.y = context.ReadValue<float>();
        }
        if (context.canceled)
        {
            triggerRotation.y = 0;
        }
    }
    public void RotateCounterClockwise(InputAction.CallbackContext context)
    {
        if (context.performed)
        {
            triggerRotation.y = context.ReadValue<float>()*-1;
        }
        if (context.canceled)
        {
            triggerRotation.y = 0;
        }
    }
    
    public void MutateSquad(InputAction.CallbackContext context)
    {
        if (context.started)
        {
            mutateEvent.Invoke();
        }
    }

    public void PrimaryAbility(InputAction.CallbackContext context)
    {
        if (context.started)
        {
            primaryAbilityEvent.Invoke();
        }
    }

}
