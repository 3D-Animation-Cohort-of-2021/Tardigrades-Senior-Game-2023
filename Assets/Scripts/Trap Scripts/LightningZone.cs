using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LightningZone : MonoBehaviour
{
    private WaitForSeconds vfxTime, intervalTime;
    [SerializeField] private float vfxDuration, intervalDuration, range, totalDamage;
    public bool isOn;
    [SerializeField] private GameObject visualSphere;
    private Coroutine currentRoutine;
    

    private void Start()
    {
        vfxTime = new WaitForSeconds(vfxDuration);
        intervalTime = new WaitForSeconds(intervalDuration);
        currentRoutine = StartCoroutine(ShockRoutine());
    }

    private IEnumerator CreateLightning()
    {
        visualSphere.GetComponent<MeshRenderer>().enabled = true;
        yield return vfxTime;
        visualSphere.GetComponent<MeshRenderer>().enabled = false;
    }

    private void DistributedShock()
    {
        float numT = 0;
        Collider[] ObjectsInRange = Physics.OverlapSphere(gameObject.transform.position, range);
        foreach (Collider c in ObjectsInRange)
        {
            if (c.GetComponent<TardigradeBase>())
                numT++;
        }

        foreach (Collider c in ObjectsInRange)
        {
            //if (c.GetComponent<TardigradeBase>()) //call method on tardigrade
                //c.GetComponent<TardigradeBase>().TakeDamage(Elem.Neutral, totalDamage/numT);
        }
    }

    private IEnumerator ShockRoutine()
    {
        while (isOn)
        {
            StartCoroutine(CreateLightning());
            DistributedShock();
            yield return intervalTime;
        }
    }
}
