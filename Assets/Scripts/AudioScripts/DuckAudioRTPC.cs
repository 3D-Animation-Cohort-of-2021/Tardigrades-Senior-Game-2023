using UnityEngine;

public class DuckAudioRTPC : MonoBehaviour
{
    
    public void DuckAudio()
    {
        AkSoundEngine.SetRTPCValue("DuckAudioRTPC", 0);
    }

    public void UnDuckAudio()
    {
        AkSoundEngine.SetRTPCValue("DuckAudioRTPC", 1);
    }
}
