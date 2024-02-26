using UnityEngine;
using UnityEngine.UI;

namespace AudioScripts
{
    public class SettingsVolumeSlider : MonoBehaviour
    {
        public Slider thisSlider;
        public float masterVolume;
        public float musicVolume;
        public float sfxVolume;

        public void SetVolume(string audioBus)
        {
            float sliderValue = thisSlider.value;
            
            // check for bus name, set in inspector
            if (audioBus == "Master")
            {
                masterVolume = thisSlider.value;
                AkSoundEngine.SetRTPCValue("MasterVolumeRTPC", masterVolume);
            }        
        
            if (audioBus == "Music")
            {
                musicVolume = thisSlider.value;
                AkSoundEngine.SetRTPCValue("MusicVolumeRTPC", musicVolume);
            }
        
            if (audioBus == "SFX")
            {
                sfxVolume = thisSlider.value;
                AkSoundEngine.SetRTPCValue("SFXVolumeRTPC", sfxVolume);
            }
        }
    }
}
