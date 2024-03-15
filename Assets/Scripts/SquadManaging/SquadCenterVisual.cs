using System;
using UnityEngine;

public class SquadCenterVisual : MonoBehaviour
{
    [ColorUsage(true, true)]
    [SerializeField] private Color baseColor, highlightColor;

    public void HighLight()
    {
        ChangeMats(highlightColor);
    }
    public void UnHighLight()
    {
        ChangeMats(baseColor);
    }

    private void ChangeMats(Color newColor)
    {
        MeshRenderer[] renderers = GetComponentsInChildren<MeshRenderer>();
        foreach (MeshRenderer renderer in renderers)
        {
            renderer.material.SetColor("_Color", newColor);
        }
    }
    
}
