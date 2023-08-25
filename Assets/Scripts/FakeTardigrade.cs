using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FakeTardigrade : MonoBehaviour
{
    [SerializeField]private float health;
    private void OnCollisionEnter(Collision collision)
    {
        if (collision.gameObject.GetComponent<TrapDamageType>())
        {
            string typeTaken = collision.gameObject.GetComponent<TrapDamageType>().GetCat();
            if (typeTaken == "fire")
                health += 2;
            if (typeTaken == "water")
                health -= 1;
            Debug.Log(collision.gameObject.GetComponent<TrapDamageType>().GetType());
        }
    }
}
