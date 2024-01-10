using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RisingTide : MonoBehaviour
{
    public float waitSeconds = 0.1f;
    public float speed = 0.1f;
    public float tideHeight;
    public float tideHeightOffSet;
    
    private bool rising = true;
    
    void Start()
    {
        StartCoroutine(Tide());
    }

    public IEnumerator Tide()
    {
        while (rising)
        {
            float y = Mathf.PingPong(Time.time * speed, 1) * tideHeight + tideHeightOffSet;
            gameObject.transform.position = new Vector3(gameObject.transform.position.x, y, gameObject.transform.position.z);
            yield return new WaitForSeconds(waitSeconds);
        }
    }
}
