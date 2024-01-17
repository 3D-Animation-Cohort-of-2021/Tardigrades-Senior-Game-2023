using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LevelSquadSpawner : MonoBehaviour, IReset
{
    public bool squadAcquired;
    public GameObject squadPrefab;
    public Elem elementType;
    public int numTards;
    private GameObject spawnedSquad;
    public bool shouldReset { get; set; }

    private void Start()
    {
        shouldReset = false;
        CreateSquadFromTemplate();
    }

    public void Reset()
    {
        if (shouldReset)
        {
            CreateSquadFromTemplate();
        }
    }

    private void OnTriggerExit(Collider other)
    {
        if (other.gameObject == spawnedSquad&&!squadAcquired)
        {
            squadAcquired = true;
            shouldReset = true;
            Debug.Log("A squad has been picked up from the level");
        }
    }


    public void RespondToCpSave()
    {
        if (squadAcquired)
        {
            shouldReset = false;
        }
    }

    public void CreateSquadFromTemplate()
    {
        spawnedSquad = Instantiate(squadPrefab, gameObject.transform.position, gameObject.transform.rotation);
        spawnedSquad.GetComponent<SquadBrain>().setInfo(elementType, numTards);
    }
}
