using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PostStopEvent : MonoBehaviour
{
    public AK.Wwise.Event EventToStop;

    public void PostEvent()
    {
        EventToStop.Post(gameObject);
    }
}
