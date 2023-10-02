using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class UI_Brain_Interface : MonoBehaviour
{
    [SerializeField]private Horde_Info _brain;
    public GameActionElemental _gameActionElemental;

    private void Awake()
    {
        _gameActionElemental.raise += UpdateTypeCount;

        resetHordeToZero();
    }

    public void UpdateTypeCount(Elem type, int num)
    {
        _brain.ChangeTypeCount(type, num);
    }

    public void resetHordeToZero()
    {
        _brain.ResetToZero();
    }
}
