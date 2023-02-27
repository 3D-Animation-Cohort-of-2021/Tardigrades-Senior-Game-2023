using System.Collections.Generic;
using UnityEngine.Events;
using UnityEngine;
//Made By Parker Bennion

public class Call : MonoBehaviour
{
    public List<Raise> raiseListenObj;

    public UnityEvent onRaiseEvent;
    private void Start()
    {
        if (raiseListenObj != null)
        {
            for (int i = 0; i < raiseListenObj.Count; i++)
            {
                raiseListenObj[i].raise+= Raise;
            }
            
        }
        
    }
    public void Raise()
    {
        onRaiseEvent.Invoke();
    }
}
