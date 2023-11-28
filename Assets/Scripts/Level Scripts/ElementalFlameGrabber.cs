using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
[RequireComponent(typeof(Collider))]
public class ElementalFlameGrabber : MonoBehaviour
{
    public GameObject newTargetObj;

    private void Awake()
    {
        GetComponent<Collider>().isTrigger = true;
    }

    private void OnTriggerEnter(Collider other)
    {
        Debug.Log("Attempting to grab"+other.gameObject);
        if (other.TryGetComponent(out ElementalFlameCore flameCore))
        {
            Debug.Log("Grabbing Flame");
            flameCore.parentFlameObj.StartFollowing(newTargetObj);
        }
    }
}