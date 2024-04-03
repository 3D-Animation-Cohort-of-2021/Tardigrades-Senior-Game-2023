using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AudioOnStartEvent : MonoBehaviour
{
    public AK.Wwise.Event audioEventOnStart;
    void Start()
    {
        audioEventOnStart.Post(gameObject);
    }
}
