using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(Collider))]
[RequireComponent (typeof(Rigidbody))]
public class Crusher : MonoBehaviour
{
    private void OnTriggerEnter(Collider other)
    {
        SquishVFXBehaviour squishVFXBehaviour = other.gameObject.GetComponentInChildren<SquishVFXBehaviour>();

        Vector3 collisionPoint = other.ClosestPoint(transform.position);
        Vector3 direction = collisionPoint - transform.position;

        if(squishVFXBehaviour != null )
        {
            squishVFXBehaviour.Play(direction);
        }
    }
}
