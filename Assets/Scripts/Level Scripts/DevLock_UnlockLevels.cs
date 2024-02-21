using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DevLock_UnlockLevels : MonoBehaviour
{
   public LevelData[] levelsInOrder;

   public void UnlockAllLevels()
   {
      for (int i = 0; i < levelsInOrder.Length; i++)
      {
         levelsInOrder[i].levelUnlocked = true;
      }
   }

   public void ResetAllLevelUnlocks()
   {
      levelsInOrder[1].levelUnlocked = true;
      for (int i = 2; i < levelsInOrder.Length; i++)
      {
         levelsInOrder[i].levelUnlocked = false;
         levelsInOrder[i].levelComplete = false;
      }
   }
}
