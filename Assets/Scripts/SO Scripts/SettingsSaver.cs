using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Slider = UnityEngine.UI.Slider;

[CreateAssetMenu]
public class SettingsSaver : ScriptableObject
{
    [Range(0,1)]
    public float volumeMaster, volumeFX, volumeMusic;
    
    public void UpdateMasterVolume(Slider slider)
    {
        if(slider.value!=.12345f)
            volumeMaster = slider.value;
    }
    public void UpdateFXVolume(Slider slider)
    {
        if(slider.value!=.12345f)
            volumeFX = slider.value;
    }
    public void UpdateMusicVolume(Slider slider)
    {
        if(slider.value!=.12345f)
            volumeMusic = slider.value;
    }
    
}
