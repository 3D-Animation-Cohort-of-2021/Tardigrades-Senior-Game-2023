using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu(fileName = "LevelData", menuName = "ScriptableObjects/Level/LevelData", order = 0)]
public class LevelData : ScriptableObject
{
    public bool levelComplete = false;
    public bool levelUnlocked = false;

    public int rating = 0;
}
