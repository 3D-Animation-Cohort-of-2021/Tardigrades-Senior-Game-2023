using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class DisableAfterTime : MonoBehaviour
{
    public float timeDelaySaved = 5f;
    private float timeDelay;
    private void OnEnable()
    {
        timeDelay = timeDelaySaved;
        StartCoroutine(Timer());
    }

    IEnumerator Timer()
    {
        while (timeDelay > 0)
        {
            timeDelay -= Time.deltaTime;
            yield return null;
        }
        gameObject.SetActive(false);
        
    }
}
