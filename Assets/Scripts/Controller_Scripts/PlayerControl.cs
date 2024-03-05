
using System.Reflection;
using UnityEngine.InputSystem;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.UI;

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
    public bool controlsEnabled;
    public GameAction pauseResumeAction;
    private bool isPause;

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
            controlsEnabled = true;
        }

        SquadsMoveCommands.SetSquadNumber(0);
        SquadsMoveCommands.SetSquadTotal(0);
        
    }
/// <summary>
/// Checks if the last input came from a mouse and or keyboard or if it came from a controller
/// </summary>
/// <param name="obj"></param>
/// <param name="change"></param>
    
    public void SetControlsActive(bool state)
    {
        controlsEnabled = state;
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
        if (context.started && controlsEnabled)
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
        if (context.started && controlsEnabled)
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
        if (!controlsEnabled) return;
        rightStickMovement.x = context.ReadValue<Vector2>().x;
        rightStickMovement.z = context.ReadValue<Vector2>().y;

        SquadsMoveCommands.vectorThree = rightStickMovement;

    }
    public void Rotate(InputAction.CallbackContext context)
    {
        if (controlsEnabled)
            rotationCallback.Invoke(context);
    }
    
    public void MutateSquad(InputAction.CallbackContext context)
    {
        if (context.started && controlsEnabled)
        {
            mutateEvent.Invoke();
        }
    }

    public void PrimaryAbility(InputAction.CallbackContext context)
    {
        if (context.started && controlsEnabled)
        {
            primaryAbilityEvent.Invoke();
        }
    }
    
    public void SecondaryAbility(InputAction.CallbackContext context)
    {
        if (context.started && controlsEnabled)
        {
            secondaryAbilityEvent.Invoke();
        }
    }

    public void PrevFormation(InputAction.CallbackContext context)
    {
        if (context.started && controlsEnabled)
        {
            updateFormation.Invoke(-1);
        }
    }

    public void NextFormation(InputAction.CallbackContext context)
    {
        if (context.started && controlsEnabled)
        {
            updateFormation.Invoke(1);
        }
    }

    public void IncreaseSpacing(InputAction.CallbackContext context)
    {
        if (context.started && controlsEnabled)
        {
            updateSpacing.Invoke(0.5f);
        }
    }

    public void DecreaseSpacing(InputAction.CallbackContext context)
    {
        if (context.started && controlsEnabled)
        {
            updateSpacing.Invoke(-0.5f);
        }
    }
    public void PauseGame(InputAction.CallbackContext context)
    {
        if (context.started && controlsEnabled)
        {
            pauseResumeAction.raise();

        }
    }

}
