using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FPSController : MonoBehaviour
{
    public bool fpsLimitOn;
    public int frameRate = 60;
    private void Awake()
    {
        if (!fpsLimitOn) return;
        QualitySettings.vSyncCount = 0;
        Application.targetFrameRate = frameRate;
    }
}
