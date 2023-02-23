using UnityEngine.Events;
using UnityEngine;
//Made By Parker Bennion

public class Call : MonoBehaviour
{
    public Raise raiseListenObj;

    public UnityEvent onRaiseEvent;
    private void Start()
    {
        if (raiseListenObj != null)
        {
            raiseListenObj.raise += Raise;
        }
        
    }
    public void Raise()
    {
        onRaiseEvent.Invoke();
    }
}
