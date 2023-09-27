using System.Collections;
using System.Collections.Generic;
using UnityEngine;
[CreateAssetMenu]
public class Horde_Info : ScriptableObject
{
  [SerializeField] private int numFire, numStone, numWater, numNormal;
  public float normalCD, fireCD, stoneCD, waterCD;
  public GameAction callUpdateText;

  public void ResetToZero()
  {
    numFire = 0;
    numNormal = 0;
    numWater = 0;
    numStone = 0;
  }

  public void ChangeTypeCount(Elem type, int val)
  {
    switch (type)
    {
        case Elem.Neutral:
          numNormal += val;
          callUpdateText.raise();
          break;
        case Elem.Fire:
          numFire += val;
          callUpdateText.raise();
          break;
        case Elem.Water:
          numWater += val;
          callUpdateText.raise();
          break;
        case Elem.Stone:
          numStone += val;
          callUpdateText.raise();
          break;
        default:
          return;
    }
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
