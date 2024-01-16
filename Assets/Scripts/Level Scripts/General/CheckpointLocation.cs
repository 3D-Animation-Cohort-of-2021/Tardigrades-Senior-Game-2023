using System;
using System.Collections;
using System.Collections.Generic;
using Unity.Mathematics;
using UnityEngine;
using UnityEngine.Events;
using UnityEditor;
public class CheckpointLocation : MonoBehaviour
{
    public GameAction saveCall;
    [SerializeField]private Horde_Info _hordeInfo;
    public GameObject squadPrefab;
    public CheckpointDeployer cpManager;
    public UnityEvent loadFinishedEvent, updateWorldResetState;
    public GameObject
        normalSquadLoc,
        fireSquadLoc, 
        stoneSquadLoc, 
        waterSquadLoc;
    private Transform[] squadLocations;
    private bool isCurrentLocation;
    
    private void Awake()
    {
        squadLocations = new Transform[] {normalSquadLoc.transform, fireSquadLoc.transform, stoneSquadLoc.transform, waterSquadLoc.transform};
         
    }

    public void CreateSquads()
    {
        int[] savedNums = _hordeInfo.getSavedSquadNums();
        Elem[] types = new Elem[] {Elem.Neutral, Elem.Fire, Elem.Stone, Elem.Water};
        for (int i = 0; i < savedNums.Length; i++)
        {
            if(savedNums[i]<=0) continue;
            CreateSquad(squadLocations[i],savedNums[i], types[i]);
        }
        loadFinishedEvent.Invoke();
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.TryGetComponent(out SquadManager player))
        {
            AssignThisCheckpoint();
        }
    }

    private void CreateSquad(Transform location, int numberOfTards, Elem type)
    {
        GameObject squad = Instantiate(squadPrefab, location.position, quaternion.identity);
        squad.GetComponent<SquadBrain>().setInfo(type,numberOfTards);
    }

    public void AssignThisCheckpoint()
    {
        _hordeInfo.WriteHordeToCheckpoint();
        cpManager.currentCPLoc = this;
        updateWorldResetState.Invoke();
        Debug.Log("checkpoint set");
        saveCall.raise();
    }

    public Transform[] GetSquadLocations()
    {
        return squadLocations;
    }

    public void SetActiveCollider()
    {
        if (cpManager.currentCPLoc == this)
            GetComponent<Collider>().enabled = false;
        else
            GetComponent<Collider>().enabled = true;
    }
}
