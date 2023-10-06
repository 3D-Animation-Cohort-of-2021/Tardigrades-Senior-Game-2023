using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
[RequireComponent(typeof(MeshRenderer))]
public class HealthDisplay : MonoBehaviour
{
    private Material thisMat;
    public Color highColor, lowColor;

    private void Start()
    {
        GetComponent<MeshRenderer>().material.color = highColor;
    }

    public void UpdateColor(float current, float max)
    {
        GetComponent<MeshRenderer>().material.color = Color.Lerp(lowColor, highColor, current / max);
    }
}
