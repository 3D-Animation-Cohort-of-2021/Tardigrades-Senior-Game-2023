using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;
[CreateAssetMenu]
public class GameActionElementalFormation : ScriptableObject
{
    public UnityAction<Elem, Formation> raise;

    public void RaiseAction(Elem type, Formation form)
    {
        if (raise != null)
        {
            raise.Invoke(type, form);
        }
    }
}
