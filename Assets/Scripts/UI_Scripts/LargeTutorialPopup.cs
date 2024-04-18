using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.UI;

public class LargeTutorialPopup : MonoBehaviour
{
    public Sprite[] tutorialImages;
    public Image mainDisplay;
    public int currentImageIndex;
    public UnityEvent enabledEvent;
    public Button prevButton, nextButton, exitButton;
    private Navigation endNav, defaultNav;

    private void Awake()
    {
        endNav = new Navigation();
        endNav.mode = Navigation.Mode.Explicit;
        endNav.selectOnRight = exitButton;
        defaultNav = prevButton.navigation;

    }

    public void Navigate(int direction)
    {
        currentImageIndex += direction;
        EvaluateButtons();
        mainDisplay.sprite = tutorialImages[currentImageIndex];
        Debug.Log("Moving "+direction);
    }
    
    public void EvaluateButtons()
    {
        if (currentImageIndex == 0)
        {
            prevButton.gameObject.SetActive(false);
            nextButton.Select();
        }
        else
        {
            prevButton.gameObject.SetActive(true);
        }

        if (currentImageIndex >= tutorialImages.Length-1)
        {
            nextButton.gameObject.SetActive(false);
            exitButton.gameObject.SetActive(true);
            exitButton.Select();
            prevButton.navigation = endNav;
        }
        else
        {
            nextButton.gameObject.SetActive(true);
            exitButton.gameObject.SetActive(false);
            prevButton.navigation = defaultNav;
        }
    }

    private void OnEnable()
    {
        enabledEvent.Invoke();
        currentImageIndex = 0;
        mainDisplay.sprite = tutorialImages[0];
        prevButton.gameObject.SetActive(false);
        if (tutorialImages.Length == 1)
        {
            nextButton.gameObject.SetActive(false);
            exitButton.gameObject.SetActive(true);
            exitButton.Select();
        }
        else
        {
            nextButton.gameObject.SetActive(true);
            exitButton.gameObject.SetActive(false);
            nextButton.Select();
        }
    }
}
