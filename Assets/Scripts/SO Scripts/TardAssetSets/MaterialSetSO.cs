using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu(fileName = "MaterialSet", menuName = "ScriptableObjects/MaterialLists/MaterialSet", order = 0)]
public class MaterialSetSO : ScriptableObject
{
    public Elem type;
    public Material material;
    public Mesh mesh;
    public GameObject activeAbilityEffect;
    public GameObject childObject;
}
