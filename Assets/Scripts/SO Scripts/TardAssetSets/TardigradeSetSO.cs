using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu(fileName = "MaterialSet", menuName = "ScriptableObjects/MaterialLists/MaterialSet", order = 0)]
public class TardigradeSetSO : ScriptableObject
{
    public Elem type;
    public Material _material;
    public GameObject _activeAbilityEffect;
    public GameObject _abilityChildObject;

    public GameObject _conversionEffect;

    public float _primaryCooldown;
    public float _secondaryCooldown;


}
