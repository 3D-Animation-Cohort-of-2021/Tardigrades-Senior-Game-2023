using System;
using UnityEngine;
using UnityEngine.InputSystem;
using UnityEngine.UI;

public class DB_ButtonChange : MonoBehaviour
{
    private PlayerInput playerInput;

    //store controls
    private InputAction Aaction,Baction,Xaction,Yaction,RTaction,LTaction,RBaction,LBaction,StartAction,SelectAction,DUpaction,DDownaction,DLeftaction,DRightaction;
    public Image xSprite, ySprite, bSprite, aSprite, dUpSprite,dLeftSprite,dRightSprite,dDownSprite,rBSprite,lBSprite,startSprite,selectSprite;
    public bool debugActive = true;
    private void Awake()
    {
        playerInput = GetComponent<PlayerInput>();
        Aaction = playerInput.actions["A"];
        Baction = playerInput.actions["B"];
        Xaction = playerInput.actions["X"];
        Yaction = playerInput.actions["Y"];
        RTaction = playerInput.actions["RightTrigger"];
        LTaction = playerInput.actions["LeftTrigger"];
        DUpaction = playerInput.actions["DPadUp"];
        DDownaction = playerInput.actions["DPadDown"];
        DLeftaction = playerInput.actions["DPadLeft"];
        DRightaction = playerInput.actions["DPadRight"]; 
        RBaction = playerInput.actions["RightBumper"];
        LBaction = playerInput.actions["LeftBumper"];
        StartAction = playerInput.actions["Start"];
        SelectAction = playerInput.actions["Select"];
        
        Aaction.ReadValue<bool>();
    }

    private void Update()
    {
        //writeButtonValues.xval = Xaction.IsPressed();
        
        
        
        //leftStick function
        //right stick Function
    }

    public void XFunction(InputAction.CallbackContext context)
    {
        if (debugActive)
        {
            if (context.started)
            {
                xSprite.color = Color.red;
            }
            if (context.canceled)
            {
                xSprite.color = Color.white;
            }
        }
    }
    public void YFunction(InputAction.CallbackContext context)
    {
        if (debugActive)
        {
            if (context.started)
            {
                ySprite.color = Color.red;
            }
            if (context.canceled)
            {
                ySprite.color = Color.white;
            }
        }
    }
    public void AFunction(InputAction.CallbackContext context)
    {
        if (debugActive)
        {
            if (context.started)
            {
                aSprite.color = Color.red;
            }
            if (context.canceled)
            {
                aSprite.color = Color.white;
            }
        }
    }
    public void BFunction(InputAction.CallbackContext context)
    {
        if (debugActive)
        {
            if (context.started)
            {
                bSprite.color = Color.red;
            }
            if (context.canceled)
            {
                bSprite.color = Color.white;
            }
        }
    }
    public void RTFunction(InputAction.CallbackContext context)
    {
        if (debugActive)
        {
            if (context.started)
            {
                xSprite.color = Color.red;
            }
            if (context.canceled)
            {
                xSprite.color = Color.white;
            }
        }
    }
    public void LTFunction(InputAction.CallbackContext context)
    {
        if (debugActive)
        {
            if (context.started)
            {
                xSprite.color = Color.red;
            }
            if (context.canceled)
            {
                xSprite.color = Color.white;
            }
        }
    }
    public void DUpFunction(InputAction.CallbackContext context)
    {
        if (debugActive)
        {
            if (context.started)
            {
                dUpSprite.color = Color.red;
                
            }
            if (context.canceled)
            {
                dUpSprite.color = Color.white;
            }
        }
    }
    public void DLeftFunction(InputAction.CallbackContext context)
    {
        if (debugActive)
        {
            if (context.started)
            {
                dLeftSprite.color = Color.red;
            }
            if (context.canceled)
            {
                dLeftSprite.color = Color.white;
            }
        }
    }
    public void DRightFunction(InputAction.CallbackContext context)
    {
        if (debugActive)
        {
            if (context.started)
            {
                dRightSprite.color = Color.red;
            }
            if (context.canceled)
            {
                dRightSprite.color = Color.white;
            }
        }
    }
    public void DDownFunction(InputAction.CallbackContext context)
    {
        if (debugActive)
        {
            if (context.started)
            {
                dDownSprite.color = Color.red;
            }
            if (context.canceled)
            {
                dDownSprite.color = Color.white;
            }
        }
    }
    public void RBFunction(InputAction.CallbackContext context)
    {
        if (debugActive)
        {
            if (context.started)
            {
                rBSprite.color = Color.red;
            }
            if (context.canceled)
            {
                rBSprite.color = Color.white;
            }
        }
    }
    public void LBFunction(InputAction.CallbackContext context)
    {
        if (debugActive)
        {
            if (context.started)
            {
                lBSprite.color = Color.red;
            }
            if (context.canceled)
            {
                lBSprite.color = Color.white;
            }
        }
    }
    public void StartFunction(InputAction.CallbackContext context)
    {
        if (debugActive)
        {
            if (context.started)
            {
                startSprite.color = Color.red;
            }
            if (context.canceled)
            {
                startSprite.color = Color.white;
            }
        }
    }
    public void SelectFunction(InputAction.CallbackContext context)
    {
        if (debugActive)
        {
            if (context.started)
            {
                selectSprite.color = Color.red;
            }
            if (context.canceled)
            {
                selectSprite.color = Color.white;
            }
        }
    }
    


    public void MakeRed(Button pressed, Image imageColor)
    {
        
    }

    public void MakeWhite(SpriteRenderer sprite)
    {
        
    }
}
