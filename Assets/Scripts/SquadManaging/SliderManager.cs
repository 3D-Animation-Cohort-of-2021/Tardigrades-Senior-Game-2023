using UnityEngine;
using Slider = UnityEngine.UI.Slider;
//Made by Parker Bennion
public class SliderManager : MonoBehaviour
{
    public Slider thisSlider;

    //sets slider value
    private void Start()
    {
        thisSlider.maxValue = 10;
    }

    //adds value to slider
    public void AddSlider()
    {
        thisSlider.value++;
    }

    //takes value from slider
    public void MinusSlider()
    {
        thisSlider.value--;
    }
}
