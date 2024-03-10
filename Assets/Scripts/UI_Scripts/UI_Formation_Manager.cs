using System;
using System.Collections;
using System.Collections.Generic;
using Unity.Mathematics;
using UnityEngine;
using UnityEngine.U2D;
using UnityEngine.UI;
using UnityEngine.Events;

public class UI_Formation_Manager : MonoBehaviour
{
    public Image leftSmall, middleLarge, rightSmall, hiddenRight;
    public int _shapeIndex, hiddenIndex;
    public GameActionElementalFormation formationUpdateCall;
    public Sprite[] imageArray;
    public Animator formationAnim;
    private int direction, tempIndex;

    public Sprite
        cluster,
        wedge,
        circle,
        line;

    public Color neutralOverlay, fireOverlay, waterOverlay, stoneOverlay;


    private void Awake()
    {
        formationAnim = GetComponent<Animator>();
        imageArray = new[] {cluster, wedge, circle, line};
        formationUpdateCall.raise += UpdateImages;
    }

    private void Start()
    {
        SetSpritesToNeutral();
        ApplyImages();
    }

    public void SetSpritesToNeutral()
    {
        ApplyColors(neutralOverlay);
    }
    public void updateCurrentElement(Elem type)
    {
        switch (type)
        {
            case Elem.Neutral:
                ApplyColors(neutralOverlay);
                break;
            case Elem.Fire:
                ApplyColors(fireOverlay);
                break;
            case Elem.Water:
                ApplyColors(waterOverlay);
                break;
            case Elem.Stone:
                ApplyColors(stoneOverlay);
                break;
        }
    }
    public void updateCurrentShapes(Formation shape)
    {
        switch (shape)
        {
            case Formation.Cluster:
                imageArray = new[] {wedge, cluster, line, circle};
                tempIndex = 1;
                break;
            case Formation.Wedge:
                imageArray = new[] {circle, wedge, cluster, line};
                tempIndex = 0;
                break;
            case Formation.Circle:
                imageArray = new[] {line, circle, wedge, cluster};
                tempIndex = 3;
                break;
            case Formation.Line:
                imageArray = new[] {cluster, line, circle, wedge};
                tempIndex = 2;
                break;
        }
        GetDirection(tempIndex, _shapeIndex);
        _shapeIndex = tempIndex;
    }

    public void GetDirection(int tempX, int currentX)
    {
        if (tempX == currentX)
            direction = 0;
        direction = tempX - currentX;
        if (math.abs(direction) == 3)
        {
            direction /= -3;
        }
        print(direction);
    }

    public void ApplyColors(Color clr)
    {
        leftSmall.color = clr;
        middleLarge.color = clr;
        rightSmall.color = clr;
        hiddenRight.color = clr;
    }
    public void UpdateImages(Elem type, Formation frm)
    {
        if (type == Elem.Neutral)
        {
            SetSpritesToNeutral();
            return;
        }
        updateCurrentElement(type);
        updateCurrentShapes(frm);
        //ApplyImages();
        if(direction==1)
            formationAnim.SetTrigger("Next");
        else if(direction==-1)
            formationAnim.SetTrigger("Previous");
    }

    public void ApplyImages()
    {
        leftSmall.sprite = imageArray[0];
        middleLarge.sprite = imageArray[1];
        rightSmall.sprite = imageArray[2];
        hiddenRight.sprite = imageArray[3];
    }
}
