using System;
using System.Collections;
using System.Collections.Generic;
using Unity.VisualScripting;
using UnityEngine;
using UnityEngine.VFX;

[ExecuteInEditMode]
public class EDITORMakeBurnable : MonoBehaviour
{
    public RuntimeAnimatorController animController;
    public VisualEffectAsset burningEffect;
    public bool run;
    void MakeBurnable()
    {
        if (!animController || !burningEffect)
        {
            print("Missing controller or effect");
        }
        else
        {
            Animator anim = this.AddComponent<Animator>();
            anim.runtimeAnimatorController = animController;

            VisualEffect effect = this.AddComponent<VisualEffect>();
            effect.visualEffectAsset = burningEffect;
            effect.enabled = false;
            
            print("Made "+ this + " burnable");

        }
        
        
    }

    public void Update()
    {
        if (run)
        {
            MakeBurnable();
            run = false;
        }
    }
    
    
}
