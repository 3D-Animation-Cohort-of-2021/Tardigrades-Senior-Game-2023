using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
[RequireComponent(typeof(MeshRenderer))]
public class HealthDisplay : MonoBehaviour
{
    private Material thisMat;
    public Color highColor, lowColor;
    private Color tempColor;
    private MeshRenderer mRender;

    private void Awake()
    {
        mRender = GetComponent<MeshRenderer>();
    }

    private void Start()
    {
        mRender.material.EnableKeyword("_EMISSION");
        mRender.material.SetColor("_EmissionColor", highColor);
    }

    public void UpdateColor(float current, float max)
    {
        tempColor = Color.Lerp(lowColor, highColor, current / max);
        GetComponent<MeshRenderer>().material.SetColor("_EmissionColor", tempColor);
    }
}
