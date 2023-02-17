using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
[RequireComponent(typeof(Collider))]
public class DeathZone : MonoBehaviour
{
    // Start is called before the first frame update
    private void OnTriggerEnter(Collider other)
    {
        if (other.GetComponent<TardigradeBase>())
        {
            Destroy(other.gameObject);
            Debug.Log("A tardigrade has fallen to it's death");
        }
    }
}
