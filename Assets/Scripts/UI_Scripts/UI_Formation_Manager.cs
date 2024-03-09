using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.U2D;
using UnityEngine.UI;
using UnityEngine.Events;

public class UI_Formation_Manager : MonoBehaviour
{
    public Image leftSmall, middleLarge, rightSmall;
    public int _shapeIndex;
    public GameActionElementalFormation formationUpdateCall;
    public Sprite[] imageArray;

    public Sprite
        cluster,
        wedge,
        circle,
        line;

    public Color neutralOverlay, fireOverlay, waterOverlay, stoneOverlay;


    private void Awake()
    {
        imageArray = new[] {cluster, wedge, circle, line};
        formationUpdateCall.raise += UpdateImages;
    }

    private void Start()
    {
        SetSpritesToNeutral();
    }

    public Sprite CalculateMiddleSprite()
    {
        return imageArray[_shapeIndex];
    }

    public Sprite CalculateLeftSprite()
    {
        if(_shapeIndex==0)
            return imageArray[3];
        else
            return imageArray[_shapeIndex-1];
    }

    public Sprite CalculateRightSprite()
    {
        if(_shapeIndex==3)
            return imageArray[0];
        else
            return imageArray[_shapeIndex+1];
    }

    public void SetSpritesToNeutral()
    {
        leftSmall.sprite = imageArray[12];
        middleLarge.sprite = imageArray[12];
        rightSmall.sprite = imageArray[12];
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
    public void updateCurrentShape(Formation shape)
    {
        switch (shape)
        {
            case Formation.Cluster:
                _shapeIndex = 0;
                break;
            case Formation.Wedge:
                _shapeIndex = 1;
                break;
            case Formation.Circle:
                _shapeIndex = 2;
                break;
            case Formation.Line:
                _shapeIndex = 3;
                break;
        }
    }

    public void ApplyColors(Color clr)
    {
        leftSmall.color = clr;
        middleLarge.color = clr;
        rightSmall.color = clr;
    }
    public void UpdateImages(Elem type, Formation frm)
    {
        if (type == Elem.Neutral)
        {
            SetSpritesToNeutral();
            return;
        }
        updateCurrentElement(type);
        updateCurrentShape(frm);
        leftSmall.sprite = CalculateLeftSprite();
        middleLarge.sprite = CalculateMiddleSprite();
        rightSmall.sprite = CalculateRightSprite();
        Debug.Log(type + " type " + frm + " formation");
    }
}
