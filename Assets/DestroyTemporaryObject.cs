using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DestroyTemporaryObject : MonoBehaviour
{
    public float lifespan = 1f;
    // Start is called before the first frame update
    void Start()
    {
        Destroy(gameObject, lifespan);
    }
}
