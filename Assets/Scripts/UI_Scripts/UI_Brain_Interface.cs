using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class UI_Brain_Interface : MonoBehaviour
{
    [SerializeField]private Horde_Info _brain;
    public GameActionElemental _gameActionElemental;
    public SquadUIBehavior normalUI, fireUi, stoneUI, waterUI;

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

    public void activateAbilityDisplay(Elem type)
    {
        switch (type)
        {
            case Elem.Neutral:
                normalUI.StartVisualCD();
                break;
            case Elem.Fire:
                fireUi.StartVisualCD();
                break;
            case Elem.Stone:
                stoneUI.StartVisualCD();
                break;
            case Elem.Water:
                waterUI.StartVisualCD();
                break;
            default:
                return;
        }
    }
}
