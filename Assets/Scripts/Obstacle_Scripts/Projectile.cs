using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Projectile : MonoBehaviour
{
    [SerializeField] private float speed, lifeSpan;
    private Coroutine lifeRoutine;
    private void Start()
    {
       lifeRoutine = StartCoroutine(lifeCycle());
    }

    private void Update()
    {
        transform.position += transform.forward * speed * Time.deltaTime;
    }

    private IEnumerator lifeCycle()
    {
        yield return new WaitForSeconds(lifeSpan);
        Destroy(gameObject);
    }
}
