using System;
using UnityEngine;
using Slider = UnityEngine.UI.Slider;

public class SliderManager : MonoBehaviour
{
    public Slider thisSlider;
    public SO_SquadData squadData;

    private void Start()
    {
        thisSlider.maxValue = 10;
    }

    public void AddSlider()
    {
        thisSlider.value++;
        SliderMaxValueUpdate();
    }

    public void MinusSlider()
    {
        thisSlider.value--;
        SliderMaxValueUpdate();
    }

    public void SliderMaxValueUpdate()
    {
        //int tempNmber = squadData.squadNumber;
        //thisSlider.maxValue = tempNmber;
    }
}
