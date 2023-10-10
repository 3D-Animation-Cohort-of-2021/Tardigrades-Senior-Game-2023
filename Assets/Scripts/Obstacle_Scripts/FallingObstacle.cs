using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Random = UnityEngine.Random;

public class FallingObstacle : MonoBehaviour
{
    public GameObject fallingObject;
    public float waitSeconds = 2f;
    public int negitiveRange = -5;
    //The positive range needs to be one higher than the desired value due to the way range works
    public int positiveRange = 6;
    
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
            var position = new Vector3(gameObject.transform.position.x + Random.Range(negitiveRange,positiveRange), gameObject.transform.position.y, gameObject.transform.position.z + Random.Range(negitiveRange,positiveRange));
            Instantiate(fallingObject, position, Quaternion.identity);
            
            yield return new WaitForSeconds(waitSeconds);
        }
    }
    
    public void StopLoop()
    {
        isLooping = false;
    }
}
