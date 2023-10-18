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
        if (other.TryGetComponent(out TardigradeBase tard))
        {
            tard.Death();
            Debug.Log("A tardigrade has fallen to it's death");
        }
    }
}
