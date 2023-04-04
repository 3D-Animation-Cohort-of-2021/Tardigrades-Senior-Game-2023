using UnityEngine;
using UnityEngine.Events;
//Made By Parker Bennion

[CreateAssetMenu]
public class Raise : ScriptableObject
{
    public UnityAction raise;

    public void RaiseAction()
    {
        raise?.Invoke();
    }
}
