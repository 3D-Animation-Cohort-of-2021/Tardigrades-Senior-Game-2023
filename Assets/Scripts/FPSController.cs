using UnityEngine;

//Made By Parker Bennion

public class FPSController : MonoBehaviour
{
    public bool fpsLimitOn;
    public int frameRate = 60;
    private void Awake()
    {
        if (!fpsLimitOn) return;
        QualitySettings.vSyncCount = 0;
        Application.targetFrameRate = frameRate;
    }
}
