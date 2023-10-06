using System.Reflection;
using UnityEngine.InputSystem;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.AI;
using System.Collections;
using UnityEditor.Rendering.LookDev;
//Made By Parker Bennion

public enum OffMeshLinkMoveMethod
{
    Teleport,
    NormalSpeed,
    Parabola
}

public class PlayerControl : MonoBehaviour
{
    public DebugInputSO debugInput;
    private Vector3 triggerRotation, rightStickMovement;
    public SO_SquadData SquadsMoveCommands;

    private Coroutine offMeshPathInstance = null;
    public UnityEvent squadChangeNext, squadChangePrevious, mutateEvent, primaryAbilityEvent, secondaryAbilityEvent;
    public UnityEvent<int> updateFormation;
    public UnityEvent<float> updateSpacing;
    public UnityEvent<InputAction.CallbackContext> movementCallback, rotationCallback;

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
        SquadsMoveCommands.SetSquadTotal(0);
        
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


    public void CHANGEME(InputAction.CallbackContext context) //change change me to the exact name of the control added in the debug input scriptable object
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
        movementCallback.Invoke(context);
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
            
            SquadsMoveCommands.AddSquadNumber();
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
    public void Rotate(InputAction.CallbackContext context)
    {
        rotationCallback.Invoke(context);
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
    
    public void SecondaryAbility(InputAction.CallbackContext context)
    {
        if (context.started)
        {
            secondaryAbilityEvent.Invoke();
        }
    }

    public void PrevFormation(InputAction.CallbackContext context)
    {
        if (context.started)
        {
            updateFormation.Invoke(-1);
        }
    }

    public void NextFormation(InputAction.CallbackContext context)
    {
        if (context.started)
        {
            updateFormation.Invoke(1);
        }
    }

    public void IncreaseSpacing(InputAction.CallbackContext context)
    {
        if (context.started)
        {
            updateSpacing.Invoke(0.5f);
        }
    }

    public void DecreaseSpacing(InputAction.CallbackContext context)
    {
        if (context.started)
        {
            updateSpacing.Invoke(-0.5f);
        }
    }

}
