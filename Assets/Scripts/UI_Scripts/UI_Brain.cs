using System.Collections;
using System.Collections.Generic;
using UnityEngine;
[CreateAssetMenu]
public class UI_Brain : ScriptableObject
{
  [SerializeField] private int numFire, numStone, numWater, numNormal;
  public float normalCD, fireCD, stoneCD, waterCD;
  public GameAction callUpdateText;
  
  public void ChangeNormalCount(int val)
  {
    numNormal += val;
    callUpdateText.raise();
  }
  public void ChangeFireValue(int val)
  {
    numFire += val;
    callUpdateText.raise();
  }
  public void ChangeStoneCount(int val)
  {
    numStone += val;
    callUpdateText.raise();
  }
  public void ChangeWaterCount(int val)
  {
    numWater += val;
    callUpdateText.raise();
  }

  public int GetTypeCount(Elem element)
  {
    switch (element)
    {
      case Elem.Neutral:
        return numNormal;
      case Elem.Fire:
        return numFire;
      case Elem.Stone:
        return numStone;
      case Elem.Water:
        return numWater;
      default:
        return 0;
    }
  }

  public float GetCD(Elem element)
  {
    switch (element)
    {
      case Elem.Neutral:
        return normalCD;
      case Elem.Fire:
        return fireCD;
      case Elem.Stone:
        return stoneCD;
      case Elem.Water:
        return waterCD;
      default:
        return 0;
    }
  }
}
