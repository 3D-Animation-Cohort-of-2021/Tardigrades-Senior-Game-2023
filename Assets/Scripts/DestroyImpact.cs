using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DestroyImpact : MonoBehaviour
{
    public LayerMask collisionLayer;
    private void OnCollisionEnter(Collision collision)
    {
        if ((collisionLayer) != 0)
        {
            // Destroy the object when it collides with the specified layer
            Destroy(gameObject);
        }
    }
}
