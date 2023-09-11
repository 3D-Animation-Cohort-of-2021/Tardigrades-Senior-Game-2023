using System.Reflection;
using UnityEngine.InputSystem;
using UnityEngine;
using UnityEngine.Events;

public class MenuControlBehaviour : MonoBehaviour
{
    public DebugInputSO debugInput;
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


}
