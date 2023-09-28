using System.Collections;
using System.Collections.Generic;
using UnityEngine;

//Created by: Marshall Krueger
//Last edited by: Marshall Krueger 9/18/23
//Purpose: Manages toggleable abilities
public class ToggleAbility : Ability
{
    private bool toggled = false;
    public float loopDelayTime = 2f;

    public bool ToggleStatus()
    {
        return toggled;
    }
    public bool FlipToggle() 
    { 
        if(!toggled && activatable)
        {
            toggled = true;

            return toggled;
        }
        else if(toggled && activatable)
        {
            Cooldown();
        }

        toggled = false;


        return toggled;
    }
}
