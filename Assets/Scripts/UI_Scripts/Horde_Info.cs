using System.Collections;
using System.Collections.Generic;
using System.Globalization;
using UnityEngine;
[CreateAssetMenu]
public class Horde_Info : ScriptableObject
{
  [Header("Active")]
  [SerializeField] private int
    numFire,
    numStone,
    numWater,
    numNormal;  
  [Header("Saved")]
  [SerializeField] private int 
    savedFire, 
    savedStone, 
    savedWater, 
    savedNormal;
  [Header("Primary")]
  public float
    normalCD,
    fireCD,
    stoneCD,
    waterCD;

  [Header("Secondary")] public float
    normalToggleCD,
    fireToggleCD,
    stoneToggleCD,
    waterToggleCD;
  
    
  public GameAction callUpdateText, hordeIsDeadAction;
  public bool gameRunning, canFail;


  public void SetPlayActiveState(bool gameState)
  {
    gameRunning = gameState;
  }
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

    if ((numNormal + numFire + numStone + numWater) <= 0 && gameRunning && canFail)
    {
      hordeIsDeadAction.raise();
    }

    if (val > 0)
      canFail = true;

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
  public float GetToggleCD(Elem element)
  {
    switch (element)
    {
      case Elem.Neutral:
        return normalToggleCD;
      case Elem.Fire:
        return fireToggleCD;
      case Elem.Stone:
        return stoneToggleCD;
      case Elem.Water:
        return waterToggleCD;
      default:
        return 0;
    }
  }

  public int[] getSavedSquadNums()
  {
    int[] squadCounts = new int[]{savedNormal, savedFire, savedStone, savedWater};
    return squadCounts;
  }

  public int[] getCurrentSquadNums()
  {
    int[] squadCounts = {numNormal, numFire, numStone, numWater};
    return squadCounts;
  }
  public void WriteHordeToCheckpoint()
  {
    savedFire = numFire;
    savedStone = numStone;
    savedWater = numWater;
    savedNormal = numNormal;
  }
}
