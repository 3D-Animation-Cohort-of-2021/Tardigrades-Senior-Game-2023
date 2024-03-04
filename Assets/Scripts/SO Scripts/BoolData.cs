using System.Collections;
using System.Collections.Generic;
using UnityEngine;
[CreateAssetMenu]
public class BoolData : ScriptableObject
{
    public bool savedBool;

    public void SetBool(bool value)
    {
        savedBool = value;
    }

    public bool GetBool()
    {
        return savedBool;
    }
}
