using System;
using System.Collections;
using System.Collections.Generic;
using Unity.Mathematics;
using UnityEngine;
using UnityEngine.Events;
public class CheckpointLocation : MonoBehaviour
{
    [SerializeField]private Horde_Info _hordeInfo;
    public GameObject squadPrefab;
    public CheckpointDeployer cpManager;
    public UnityEvent loadFinishedEvent;
    public GameObject
        normalSquadLoc,
        fireSquadLoc, 
        stoneSquadLoc, 
        waterSquadLoc;
    private GameObject[] squadLocations;
    private void Awake()
    {
        squadLocations = new GameObject[] {normalSquadLoc, fireSquadLoc, stoneSquadLoc, waterSquadLoc};
    }

    public void CreateSquads()
    {
        int[] savedNums = _hordeInfo.getSavedSquadNums();
        Elem[] types = new Elem[] {Elem.Neutral, Elem.Fire, Elem.Stone, Elem.Water};
        for (int i = 0; i < savedNums.Length; i++)
        {
            if(savedNums[i]<=0) continue;
            createSquad(squadLocations[i],savedNums[i], types[i]);
        }
        loadFinishedEvent.Invoke();
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.TryGetComponent(out SquadManager player))
        {
            _hordeInfo.WriteHordeToCheckpoint();
            cpManager.currentCPLoc = this;
            Debug.Log("checkpoint set");
        }
    }

    private void createSquad(GameObject location, int numberOfTards, Elem type)
    {
        GameObject squad = Instantiate(squadPrefab, location.transform.position, quaternion.identity);
        squad.GetComponent<SquadBrain>().setInfo(type,numberOfTards);
    }

}
