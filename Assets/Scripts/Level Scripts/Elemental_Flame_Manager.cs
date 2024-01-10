using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;
using Random = UnityEngine.Random;

public class Elemental_Flame_Manager : MonoBehaviour
{
    public int totalRounds, currentRoundsCompleted;
    public GameObject[] spawnBraziers;
    private ElementalFlame refFlame;
    public ElementalFlame[] listOfFlames;
    public ElementalFlameDeposit depo;
    public UnityEvent completeEvent;

    private void Start()
    {
        currentRoundsCompleted = 0;
        LayoutFlames();
    }

    private void LayoutFlames()
    {
        for (int i = 0; i < spawnBraziers.Length; i++)
        {
            PlaceFlame(spawnBraziers[i], listOfFlames[i]);
        }
    }

    public void PlaceFlame(GameObject spawnLocation, ElementalFlame flame)
    { 
        refFlame = Instantiate(flame, spawnLocation.transform.position, spawnLocation.transform.rotation);
        refFlame.fallbackFollowTarget = spawnLocation;
    }

    public void CompleteRound()
    {
        currentRoundsCompleted++;
        if(currentRoundsCompleted>=totalRounds)
            completeEvent.Invoke();
    }
    
}