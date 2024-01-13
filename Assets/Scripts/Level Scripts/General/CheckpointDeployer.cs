using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class CheckpointDeployer : MonoBehaviour
{
    private Horde_Info _hInfo;
    public CheckpointLocation currentCPLoc, startingCPLoc;
    public GameObject playerCenter;

    private void Awake()
    {
        
    }

    private void Start()
    {
        currentCPLoc = startingCPLoc;
    }

    public void PlayerToCheckpoint()
    {
        playerCenter.GetComponent<SquadManager>().TeleportHorde(currentCPLoc.GetSquadLocations(), currentCPLoc.transform);
        currentCPLoc.CreateSquads();

    }
}
