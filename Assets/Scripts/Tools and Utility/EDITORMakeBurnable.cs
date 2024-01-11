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
    public Material burnAtlas;
    public bool run;
    private VisualEffect effect;
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
            
            effect = this.AddComponent<VisualEffect>();
            effect.visualEffectAsset = burningEffect;

            
            if (TryGetComponent<MeshFilter>(out MeshFilter meshFilter))
            {
                effect.SetMesh("Mesh", meshFilter.sharedMesh);
                
            }
            else
            {
                print("Couldn't find mesh");
            }

            if (TryGetComponent<MeshCollider>(out MeshCollider collider))
            {
                
            }
            else
            {
                this.AddComponent<MeshCollider>();
            }
            
            if (TryGetComponent<MeshRenderer>(out MeshRenderer renderer))
            {
                renderer.material = burnAtlas;
            }

            effect.enabled = false;
            
            print("Made "+ this + " burnable");

        }
        
        
    }

    public void Update()
    {
        if (run)
        {
            run = false;
            if (TryGetComponent<Animator>(out Animator otherAnimator))
            {
                print("Can't make burnable. Object already has an Animator.");
            }
            else
            {
                if (TryGetComponent<VisualEffect>(out VisualEffect otherEffect))
                {
                    print("Can't make burnable. Object already has a Visual Effect.");
                }
                else
                {
                    MakeBurnable();
                }
            }
        }
    }
    
    
}
