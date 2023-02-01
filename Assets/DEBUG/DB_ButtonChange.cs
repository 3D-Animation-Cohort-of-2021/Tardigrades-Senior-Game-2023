using System;
using UnityEngine;
using UnityEngine.InputSystem;

public class DB_ButtonChange : MonoBehaviour
{
    private PlayerInput playerInput;
    public SO_ButtonValues writeButtonValues;
    
    //store controls
    private InputAction Aaction,Baction,Xaction,Yaction,RTaction,LTaction,RBaction,LBaction,StartAction,SelectAction,DUpaction,DDownaction,DLeftaction,DRightaction;
    private void Awake()
    {
        playerInput = GetComponent<PlayerInput>();
        Aaction = playerInput.actions["A"];
        Baction = playerInput.actions["B"];
        Xaction = playerInput.actions["X"];
        Yaction = playerInput.actions["Y"];
        RTaction = playerInput.actions["A"];
        LTaction = playerInput.actions["A"];
        RBaction = playerInput.actions["A"];
        LBaction = playerInput.actions["A"];
        StartAction = playerInput.actions["A"];
        SelectAction = playerInput.actions["A"];
        DUpaction = playerInput.actions["A"];
        DDownaction = playerInput.actions["A"];
        DLeftaction = playerInput.actions["A"];
        DRightaction = playerInput.actions["A"];
        Aaction.ReadValue<bool>();
    }

    private void Update()
    {
        writeButtonValues.xval = Xaction.IsPressed();
        
        bool xPushed = (Xaction.WasPressedThisFrame());
        Debug.Log(xPushed);
    }

    public void MakeRed(SpriteRenderer sprite)
    {
        
    }

    public void MakeWhite(SpriteRenderer sprite)
    {
        
    }
}
