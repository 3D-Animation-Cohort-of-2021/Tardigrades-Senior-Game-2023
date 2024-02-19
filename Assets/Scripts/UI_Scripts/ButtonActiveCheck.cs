using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UIElements;

public class ButtonActiveCheck : MonoBehaviour
{
    public Button thisButton;
    //public UnityEngine.UI.Button = thisbutton;
    
    // Start is called before the first frame update
    private void Awake()
    {
        thisButton = GetComponent<Button>();
    }

    void Start()
    {
        thisButton.clickable.Equals(false);
        //canvas.GetComponent<Button>().interactable = false;
    }
}
