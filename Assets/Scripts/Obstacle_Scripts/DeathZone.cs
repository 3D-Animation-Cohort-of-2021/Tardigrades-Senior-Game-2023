using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
[RequireComponent(typeof(Collider))]
public class DeathZone : MonoBehaviour
{
    public bool enabled = true;
    public DeathType tardDeathType;
    // Start is called before the first frame update
    private void OnTriggerEnter(Collider other)
    {
        if (other.TryGetComponent(out TardigradeBase tard) && enabled)
        {
            tard.Death(tardDeathType);
        }
    }
}
