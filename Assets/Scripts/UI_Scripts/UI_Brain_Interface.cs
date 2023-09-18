using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class UI_Brain_Interface : MonoBehaviour
{
    [SerializeField]private UI_Brain brain;

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
}
