using System.Reflection;
using UnityEngine.InputSystem;
using UnityEngine;
using UnityEngine.Events;

public class Return : MenuControlBehaviour
{
    public UnityEvent returnEvent;
    public void ReturnEvent(InputAction.CallbackContext context)
    {
        if (context.started)
        {
            returnEvent.Invoke();
            Debug.Log("Started" + "'Return'.");
        }

    }
}
