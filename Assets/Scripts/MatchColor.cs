using System.Collections;
using System.Collections.Generic;
using UnityEngine;
[RequireComponent(typeof(TrapDamageType))]
public class MatchColor : MonoBehaviour
{
    [SerializeField] private Material waterMat, fireMat, defaultMat;
    // Start is called before the first frame update
    void Start()
    {
        switch (GetComponent<TrapDamageType>().GetCat())
        {
          case "fire":
              GetComponent<MeshRenderer>().material = fireMat;
              break;
          case "water":
              GetComponent<MeshRenderer>().material = waterMat;
              break;
          default:
              GetComponent<MeshRenderer>().material = defaultMat;
              break;
        }
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
