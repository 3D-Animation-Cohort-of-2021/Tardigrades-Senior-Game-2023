using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
//Created by: Ethan Ware
//Purpose: This script is for controlling the Level box
[RequireComponent(typeof(Collider))]
[RequireComponent(typeof(Animator))]
public class EndBoxBehavior : MonoBehaviour
{
    public Boolean isEnd;
    public GameAction endLevel;
    private Collider endVolume;
    private Animator boxAnimator;
    void Start()
    {
        endVolume = GetComponent<Collider>();
        boxAnimator = GetComponent<Animator>();
        
        if (isEnd)
        {
            endVolume.enabled = true;
            OpenBox();
        }
    }

    public void OpenBox()
    {
        boxAnimator.SetTrigger("Open");
    }

    public void CloseBox()
    {
        boxAnimator.SetTrigger("Close");
    }
    
    /// <summary>
    /// Purpose: signal the level to end and close the box once tardigrades have entered the volume
    /// </summary>
    /// <param name="other"></param>
    public void OnTriggerEnter(Collider other)
    {
        CloseBox();
        endLevel.raise.Invoke();
    }

    public void LevelStart()
    {
        OpenBox();
    }
}
