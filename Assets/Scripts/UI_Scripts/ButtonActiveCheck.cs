using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.UI;

public class ButtonActiveCheck : MonoBehaviour
{
    public Button thisButton;

    public UnityEvent selectAButton;
    [SerializeField] private RectTransform canvasRectTransform;
    private Camera mainCam;

    public Canvas mainCanvas;
    //public UnityEngine.UI.Button = thisbutton;
    
    // Start is called before the first frame update
    private void Awake()
    {
        thisButton = GetComponent<Button>();
        mainCanvas = GetComponent<Canvas>();
        mainCam = Camera.main;
    }

    void Start()
    {
        thisButton.enabled = false;
        //canvas.GetComponent<Button>().interactable = false;
        Vector2 currentPosition = thisButton.transform.localPosition;
        

    }
}
