using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TrapDamageType : MonoBehaviour
{
    // Start is called before the first frame update
    public float interval;
    [SerializeField] private string dType;
    public float damageAmt;

    public string GetCat()
    {
        return dType;
    }
}
