using System.Reflection;
using UnityEngine.InputSystem;
using UnityEngine;
using UnityEngine.Events;
//Miriam Jardine Version for Menu Controls

public class MenuControl : MonoBehaviour
{
    public DebugInputSO debugInput;
    public UnityEvent openMenuEvent, selectionEvent, returnEvent, exitEvent;
    public GameObject[] verticalGameObjArray;
    private int gameObjIndex = 0;
    
    void Awake()
    {
        //Method created by Parker Bennion
        //Also Parker, Broski, what are these methods what are they doing
        for (int i = 0; i < debugInput.map.actions.Count; i++)
        {
            debugInput.map.actions[i].started += InputReceived;
            debugInput.map.actions[i].performed += InputReceived;
            debugInput.map.actions[i].canceled += InputReceived;
            
            debugInput.map.actions[i].Enable();
        }
        
    }

    public void InputReceived(InputAction.CallbackContext context)
    {
        //Method created by Parker Bennion.
        //Also Parker, Broski, what are these methods what are they doing
        string tempFunction;
        if (context.action.name != null)
        {
            tempFunction = context.action.name;
            if (GetType().GetMethod(tempFunction) != null)
            {
                MethodInfo method = GetType().GetMethod(tempFunction);
                method.Invoke(this, new object[] { context });
            }
        }
    }

  
    public void Select(InputAction.CallbackContext context)
    {
        if (context.started)
        {
            selectionEvent.Invoke();
            Debug.Log("Started" + "'select'.") ;
        }

        if (context.performed)
        {
            Debug.Log("Performed" + "'select'.");
        }
    }
    public void OpenMenu(InputAction.CallbackContext context)
    {
        if (context.started)
        {
            openMenuEvent.Invoke();
            Debug.Log("Started" + "'Open Menu'.");
        }

        if (context.performed)
        {
            Debug.Log("Performed" + "'Open Menu'.");
        }
    }
    public void Return(InputAction.CallbackContext context)
    {
        if (context.started)
        {
            returnEvent.Invoke();
            Debug.Log("Started" + "'Return'.");
        }

        if (context.performed)
        {
            Debug.Log("Performed" + "'Return'.");
        }
    }
    
    public void Move(InputAction.CallbackContext context)
    {
        if (context.started)
        {
            Debug.Log("Started" + "'Move'.");
        }

        if (context.performed)
        {
            Debug.Log("Performed" + "'Move'.");
        }
    }
    
    public void Exit(InputAction.CallbackContext context)
    {
        if (context.started)
        {
            exitEvent.Invoke();
            Debug.Log("Started" + "'Exit'.");
        }

        if (context.performed)
        {
            Debug.Log("Performed" + "'Exit'.");
        }
    }

}
