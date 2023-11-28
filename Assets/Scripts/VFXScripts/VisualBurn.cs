using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.VFX;

public class VisualBurn : MonoBehaviour
{
    //public UnityEvent burnEvent;
    //private void OnTriggerEnter(Collider other)
    //{
    //    if (other.TryGetComponent(out TardigradeBase tard))
    //    {
    //        //if (tard.GetStatus() == Status.Burning)
    //            Burn();
    //            burnEvent.Invoke();
    //    }
    //}

    public void Burn()
    {
        if(TryGetComponent<Animator>(out Animator otherAnim))
        {
            if (otherAnim.runtimeAnimatorController.name == "BurnController")
            {
                otherAnim.SetTrigger("Burn");
                
                if (TryGetComponent<VisualEffect>(out VisualEffect effect))
                {
                    effect.enabled = true;
                }
            }
        }
    }
    
    
}
