using UnityEngine;
using UnityEngine.Events;

public class CounterBehaviour : MonoBehaviour
{
  private int minCount = 0;
  
  public int maxCount;
  
  public GameAction gameActionObj;
  public UnityEvent onIncreaseEvent, onMaxCountEvent,onAwakeEvent;

  public void Awake()
  {
      onAwakeEvent.Invoke();
      minCount = 0;
      gameActionObj.raise += IncreaseCounter;
  }

  public void IncreaseCounter()
  {
      minCount++;
      Debug.Log("Increased Count");
      onIncreaseEvent.Invoke();
      if (minCount == maxCount)
      {
          Debug.Log("Max Count");
          onMaxCountEvent.Invoke();
          minCount = 0;
      }
  }
}
