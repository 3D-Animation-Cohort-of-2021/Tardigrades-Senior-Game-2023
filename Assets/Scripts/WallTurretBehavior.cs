using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
[RequireComponent(typeof(Animator))]
public class WallTurretBehavior : MonoBehaviour
{
    public GameObject target;
    private float fireRate, aimFireDelay, timeToAim;
    private Animator turretAnim;
    private WaitForSeconds wfs, wfa;
    private WaitForEndOfFrame wff;
    public bool inRange;
    private Coroutine aliveRoutine, aimRoutine;

    private void Awake()
    {
        turretAnim = GetComponent<Animator>();
    }

    void Start()
    {
        wfs = new WaitForSeconds(fireRate);
        wfa = new WaitForSeconds(aimFireDelay);
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.GetComponent<PlayerControl>())
        {
            inRange = true;
            aliveRoutine = StartCoroutine(LifeCycle());
        }
    }

    private void OnTriggerExit(Collider other)
    {
        if (other.GetComponent<PlayerControl>())
        {
            StopCoroutine(aimRoutine);
            StopCoroutine(aliveRoutine);
            //tell animator to hide turret
        }
    }

    private IEnumerator LifeCycle()
    {
        //animator activate turret
        while (inRange)
        {
            aimRoutine = StartCoroutine(AimGun());
            yield return wfa;
            FireGun();
            yield return wfs;
        }
    }

    private IEnumerator AimGun()
    {
        float currentAimTime = 0;
        while (currentAimTime<timeToAim)
        {
            //move Angular Lerp towards target
            yield return wff;
        }
    }

    private void FireGun()
    {
        //animator set trigger to fire
        //play vfx
        //create projectile
    }
}
