using System.Reflection;
using UnityEngine.InputSystem;
using UnityEngine.Events;
using UnityEngine.UI;
using UnityEngine;
using TMPro;

public class PlayerControl : MonoBehaviour
{
    public DebugInputSO debugInput;
    void Awake()
    {
        for(int i = 0; i < debugInput.map.actions.Count; i++)
        {
            debugInput.map.actions[i].started += InputReceived;
            debugInput.map.actions[i].performed += InputReceived;
            debugInput.map.actions[i].canceled += InputReceived;

            debugInput.map.actions[i].Enable();
        }

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

    //this is a teplate to make other controlls vvv
    //this is a teplate to make other controlls vvv
    
    
    public void CHANGEME(InputAction.CallbackContext context) //change change me to the exact name of the control added in the debug input scriptable object
    {
        if (context.started)
        {
            Debug.Log("Started"+"CHANGEME");
        }
        if (context.canceled)
        {
            Debug.Log("Canceled"+"CHANGEME");
        }
        if (context.performed)
        {
            Debug.Log("Performed"+"CHANGEME");
        }
    }
    
    
    //this is a teplate to make other controlls ^^^
    //this is a teplate to make other controlls ^^^
    
    
    
}
