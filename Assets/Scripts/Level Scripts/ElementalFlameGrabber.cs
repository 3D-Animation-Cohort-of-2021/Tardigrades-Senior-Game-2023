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
        if (other.TryGetComponent(out ElementalFlameCore flameCore))
        {
            flameCore.parentFlameObj.StartFollowing(newTargetObj);
        }
    }
}