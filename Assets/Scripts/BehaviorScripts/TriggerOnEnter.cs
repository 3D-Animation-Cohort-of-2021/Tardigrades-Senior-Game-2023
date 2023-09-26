using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

[RequireComponent(typeof(Collider))]
[RequireComponent(typeof(Rigidbody))]
public class TriggerOnEnter : MonoBehaviour
{
    public UnityEvent triggerEvent;
    private void OnTriggerEnter(Collider other)
    {
        triggerEvent.Invoke();
    }
}
