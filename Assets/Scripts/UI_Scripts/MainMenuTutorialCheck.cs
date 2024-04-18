using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class MainMenuTutorialCheck : MonoBehaviour
{
    public BoolData tutorialCompleted;

    public UnityEvent completedEvent, notCompletedEvent;

    public void LaunchFromMenu()
    {
        if(tutorialCompleted.GetBool())
            completedEvent.Invoke();
        else
            notCompletedEvent.Invoke();
    }
}
