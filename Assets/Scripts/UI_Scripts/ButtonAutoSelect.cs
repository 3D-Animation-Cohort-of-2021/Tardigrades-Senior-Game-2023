using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.UI;

public class ButtonAutoSelect : MonoBehaviour
{
    public Button currentButton;
    public Button[] buttonList;

    public void SetCurrentButtonToIndex(int index)
    {
        currentButton = buttonList[index];
    }

    public void SelectCurrentButton()
    {
        currentButton.Select();
    }

    public void ClearSelection()
    {
        EventSystem.current.SetSelectedGameObject(null);
    }
}
