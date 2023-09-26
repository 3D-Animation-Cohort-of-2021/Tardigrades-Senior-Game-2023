using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SpawnOnDeath : MonoBehaviour
{
    public GameObject spawnObject;

    public void SpawnAndDestroy()
    {
        Instantiate(spawnObject, transform.position, transform.rotation);

        Destroy(gameObject);


    }
}
