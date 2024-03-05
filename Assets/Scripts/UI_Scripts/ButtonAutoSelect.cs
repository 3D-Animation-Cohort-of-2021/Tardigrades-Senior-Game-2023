using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.UI;

public class ButtonAutoSelect : MonoBehaviour
{
    public GameObject currentButton;
    public void SelectCurrentButton()
    {
        EventSystem.current.SetSelectedGameObject(currentButton);
    }

    public void SetCurrentSavedButton(GameObject selection)
    {
        currentButton = selection;
    }
    
    public void SaveAndClearSelection()
    {
        currentButton = EventSystem.current.currentSelectedGameObject;
        EventSystem.current.SetSelectedGameObject(null);
    }
}
