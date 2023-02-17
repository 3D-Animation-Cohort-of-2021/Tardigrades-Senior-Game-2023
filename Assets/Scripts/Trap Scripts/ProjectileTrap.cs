using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Random = UnityEngine.Random;

public class ProjectileTrap : MonoBehaviour
{
    [SerializeField]private GameObject projectile;

    [SerializeField]private float maxXRange, firingFrequency, startDelay;
    private Vector3 spawningVector; 
    
    private WaitForSeconds wfs;
    private Coroutine currentRoutine;
    public bool firingActive = true;

    private void Awake()
    {
        wfs = new WaitForSeconds(firingFrequency);
        spawningVector = gameObject.transform.position;
    }

    private void Start()
    {
        currentRoutine = StartCoroutine(FiringRoutine());
    }

    public IEnumerator FiringRoutine()
    {
        yield return new WaitForSeconds(startDelay);
        while (firingActive)
        {
            yield return wfs;
            Instantiate(projectile, spawningVector, gameObject.transform.rotation);
        }
    }

    public void stopFiring()
    {
        StopCoroutine(currentRoutine);
    }

    public void StartFiring()
    {
        currentRoutine = StartCoroutine(FiringRoutine());
    }

}
