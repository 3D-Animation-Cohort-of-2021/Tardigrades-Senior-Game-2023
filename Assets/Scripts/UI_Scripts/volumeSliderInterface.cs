using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UIElements;
using Slider = UnityEngine.UI.Slider;
public class volumeSliderInterface : MonoBehaviour
{
    public Slider master, fx, music;
    public SettingsSaver setPrefs;

    public void SaveToPrefs()
    {
       /* setPrefs.UpdateMasterVolume(master.value);
        setPrefs.UpdateFXVolume(fx.value);
        setPrefs.UpdateMusicVolume(music.value);*/
    }

    public void LoadFromPrefs()
    {
        master.value = setPrefs.volumeMaster;
        fx.value = setPrefs.volumeFX;
        music.value = setPrefs.volumeMusic;
    }
}
