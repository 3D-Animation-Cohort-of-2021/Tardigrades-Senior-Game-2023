using System.Reflection;
using UnityEngine.InputSystem;
using UnityEngine;
using UnityEngine.Events;

//To use this script, attach it to a game object above a canvas you want to use.
//Add sub-select menus underneath in a hierarchy.
//Then add the events you would like to occur with each input.
public class MenuControl : MonoBehaviour
{
    public DebugInputSO debugInput;
    public UnityEvent openMenuEvent, selectionEvent, returnEvent, exitEvent, navigateEvent;
    public UnityEvent<GameObject> selectObjEvent;

    private GameObject selectedObj;

    void Awake()
    {
        //Method created by Parker Bennion
        
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

    
    public void Menu(InputAction.CallbackContext context)
    {
        if (context.started)
        {
            openMenuEvent.Invoke();
            //Place initial selected button on the UI.
            selectObjEvent.Invoke(selectedObj);
            Debug.Log("Started" + "'Open Menu'.");
        }

    }
    public void Select(InputAction.CallbackContext context)
    {
        if (context.started)
        {
            selectionEvent.Invoke();
            
            Debug.Log("Started" + "'select'.") ;
        }

    }
    public void Return(InputAction.CallbackContext context)
    {
        if (context.started)
        {
            returnEvent.Invoke();
            Debug.Log("Started" + "'Return'.");
        }

    }

    public void Exit(InputAction.CallbackContext context)
    {
        if (context.started)
        {
            exitEvent.Invoke();
            Debug.Log("Started" + "'Exit'.");
        }

    }
    
    public void Navigate(InputAction.CallbackContext context)
    {
        //this method is mainly for calling actions associated with the move input. The actual move input is controlled by the defaultInputActionMap,
        if (context.started)
        {
            navigateEvent.Invoke();
            Debug.Log("Started" + "'Navigate'.");
        }
        
    }

}
