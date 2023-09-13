using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.VFX;

public class TestBurn : MonoBehaviour
{
    private void OnTriggerEnter(Collider other)
    {
        if(other.TryGetComponent<Animator>(out Animator otherAnim))
        {
            if (otherAnim.runtimeAnimatorController.name == "BurnController")
            {
                otherAnim.SetTrigger("Burn");
                
                if (other.TryGetComponent<VisualEffect>(out VisualEffect effect))
                {
                    effect.enabled = true;
                }
            }
        }
        
    }
}
