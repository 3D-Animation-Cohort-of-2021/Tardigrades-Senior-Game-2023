using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.VFX;

public class LevelBrazierUnlock : MonoBehaviour
{
    public LevelData correspondingLevel;
    public VisualEffect flame, smoke;
    
    // Start is called before the first frame update
    private void Start()
    {
        CheckLevelStatus();
    }

    // Update is called once per frame
    public void CheckLevelStatus()
    {
        if(correspondingLevel.levelUnlocked)
        {
            flame.Play();
            smoke.Play();
        }
        else
            flame.Stop();
    }
}
