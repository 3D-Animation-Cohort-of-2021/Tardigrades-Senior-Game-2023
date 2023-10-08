using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Random = UnityEngine.Random;

public class FallingObstacle : MonoBehaviour
{
    public GameObject fallingObject;
    private bool isLooping = true;
    
    // Start is called before the first frame update
    void Start()
    {
        StartCoroutine(dropObject());
    }

    IEnumerator dropObject()
    {
        while (isLooping)
        {
            var position = new Vector3(gameObject.transform.position.x + Random.Range(-5,6), gameObject.transform.position.y, gameObject.transform.position.z + Random.Range(-5,6));
            Instantiate(fallingObject, position, Quaternion.identity);
            
            yield return new WaitForSeconds(2f);
        }
    }
    
    public void StopLoop()
    {
        isLooping = false;
    }
}
