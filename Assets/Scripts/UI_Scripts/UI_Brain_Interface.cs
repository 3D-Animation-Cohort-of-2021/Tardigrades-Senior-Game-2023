using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class UI_Brain_Interface : MonoBehaviour
{
    [SerializeField]private Horde_Info brain;

    public void UpdateNeutral(int num)
    {
        brain.ChangeNormalCount(num);
    }
    
    public void UpdateFire(int num)
    {
        brain.ChangeFireValue(num);
    }

    public void UpdateWater(int num)
    {
        brain.ChangeWaterCount(num);
    }

    public void UpdateStone(int num)
    {
        brain.ChangeWaterCount(num);
    }

    public void UpdateTypeCount(Elem type, int num)
    {
        brain.ChangeTypeCount(type, num);
    }

    public void resetHordeToZero()
    {
        brain.ResetToZero();
    }
}
