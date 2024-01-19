using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BonesBehaviour : MonoBehaviour
{
    [SerializeField]private float minLife;
    // Start is called before the first frame update
    void Start()
    {
        foreach (MeshRenderer bone in GetComponentsInChildren<MeshRenderer>())
        {
            Destroy(bone, Random.Range(minLife,minLife+2));
        }
        Destroy(this, minLife + 2);
    }
}
