using UnityEngine;
[CreateAssetMenu]
public class SO_LevelData : ScriptableObject
{
    public int numFire, numStone, numWater, numNormal, levelNum;
    public Vector3 respawnPosition;
}
