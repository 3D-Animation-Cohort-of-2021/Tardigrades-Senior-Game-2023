using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FirePuzzleManager : MonoBehaviour
{
    public int totalRounds, currentRoundsCompleted;
    public GameObject[] spawnBraziers;
    public ElementalFlame[] listOfFlames;
    public ElementalFlameDeposit depo;

    private void Start()
    {
        currentRoundsCompleted = 0;
    }
    
    
}
