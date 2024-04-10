using UnityEngine;

public class ToggleMuteRTPC : MonoBehaviour
{
    public void ToggleMute()
    {
        AkSoundEngine.SetRTPCValue("TardigradeConvertRTPC", 0);
    }

    public void ToggleUnmute()
    {
        AkSoundEngine.SetRTPCValue("TardigradeConvertRTPC", 1);
    }
}
