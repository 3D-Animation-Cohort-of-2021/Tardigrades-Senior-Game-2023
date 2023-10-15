using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class DestroyImpact : MonoBehaviour
{
    public LayerMask groundLayer;
    public LayerMask tardigradesLayer;

    public UnityEvent onGroundCollison;
    public UnityEvent onTardigradeCollison;
    private void OnCollisionEnter(Collision collision)
    {
        if (groundLayer != 0)
        {
            onGroundCollison.Invoke();
            Debug.Log("ground");
        }
    }

    private void OnTriggerEnter(Collider other)
    {
        if(tardigradesLayer != 0)
        {
            Debug.Log("tartigrade");
            onTardigradeCollison.Invoke();
        }
    }

    public void delete()
    {
        Destroy(this.gameObject);
    }
}
