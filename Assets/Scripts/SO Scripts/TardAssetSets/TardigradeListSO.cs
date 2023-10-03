using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu(fileName = "MaterialList", menuName = "ScriptableObjects/MaterialLists/MaterialList", order = 0)]
public class TardigradeListSO : ScriptableObject
{
    public TardigradeSetSO[] materials;

    public TardigradeSetSO GetMaterialSetByType(Elem type)
    {
        for(int i = 0; i < materials.Length; i++)
        {
            if(materials[i].type == type)
            {
                return materials[i];
            }
        }
        return null;
    }
}
