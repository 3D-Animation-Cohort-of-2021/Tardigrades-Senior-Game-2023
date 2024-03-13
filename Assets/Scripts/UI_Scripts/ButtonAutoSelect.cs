using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.UI;

public class ButtonAutoSelect : MonoBehaviour
{
    public GameObject currentSavedButton;
    public void SelectCurrentButton()
    {
        EventSystem.current.SetSelectedGameObject(currentSavedButton);
    }

    public void SetCurrentSavedButton(GameObject selection)
    {
        currentSavedButton = EventSystem.current.currentSelectedGameObject;
    }
    
    public void SaveAndClearSelection()
    {
        if(EventSystem.current.currentSelectedGameObject!=null)
        {
            currentSavedButton = EventSystem.current.currentSelectedGameObject;
            EventSystem.current.SetSelectedGameObject(null);
        }
    }
}
