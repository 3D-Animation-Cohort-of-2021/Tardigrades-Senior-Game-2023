
using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class CounterBehaviour : MonoBehaviour
{ private int minCount = 0;
  private bool eventRaised = false;
  private bool shouldRun = false;

  public int maxCount;
  
  public GameAction gameActionObj;
  public UnityEvent onIncreaseEvent, onMaxCountEvent,onStartEvent;
  

    public void Start()
    {
        onStartEvent.Invoke();
        minCount = 0;
        shouldRun = true;
        if (shouldRun == true)
        {
            gameActionObj.raise += IncreaseCounter;
        }
    }


    public void IncreaseCounter()
    {
        if (!shouldRun)
            return;

        Debug.Log("Current Min Count: " + minCount);
        minCount++;
        Debug.Log("Increased Count:" + minCount);

        if (minCount == maxCount)
        {
            Debug.Log("Max Count: " + maxCount);
            minCount = 0;
            Debug.Log("Min Count reset");
            onMaxCountEvent.Invoke();
            shouldRun = false;

        }

        else
        {
            onIncreaseEvent.Invoke();

        }
    }
}


/*private Coroutine countBehaviourCoroutine;

public void Awake()
{
    onStartEvent.Invoke();
    minCount = 0;
    gameActionObj.raise += StartCounting;
}

public void StartCounting()
{
    if (countBehaviourCoroutine == null)
    {
        countBehaviourCoroutine = StartCoroutine(ProcessCounting());
    }
}

public IEnumerator ProcessCounting()
{
    minCount = 0;

    while (minCount < maxCount)
    {
        yield return new WaitUntil(() => eventRaised);

        minCount++;
        onIncreaseEvent.Invoke();

        eventRaised = false;
        Debug.Log("Count " +minCount);
    }
    
    Debug.Log("Max " +maxCount);

    onMaxCountEvent.Invoke();

    yield return new WaitForSeconds(1.0f);

    minCount = 0;
    countBehaviourCoroutine = null;
}

public void RaiseAction()
{
    eventRaised = true;
}

private void OnDisable()
{
    if (countBehaviourCoroutine != null)
    {
        StopCoroutine(countBehaviourCoroutine);
    }
}

private void OnDestroy()
{
    if (countBehaviourCoroutine != null)
    {
        StopCoroutine(countBehaviourCoroutine);
    }
}

}*/
