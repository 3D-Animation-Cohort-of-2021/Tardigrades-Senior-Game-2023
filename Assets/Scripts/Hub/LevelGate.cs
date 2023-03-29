using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LevelGate : MonoBehaviour
{
    public bool entered = false;

    public bool inLevel = false;

    public GameObject levelObject;


    // Start is called before the first frame update
    private void OnTriggerEnter(Collider other)
    {
        if(other.tag != "SQUAD" && other.gameObject.layer == LayerMask.NameToLayer("Center"))
        {
           entered = true;
        }
    }

    private void OnTriggerExit(Collider other)
    {
        if (other.tag != "SQUAD" && other.gameObject.layer == LayerMask.NameToLayer("Center"))
        {
            entered = false;

            Vector3 direction = other.transform.position - transform.position;

            float distance = direction.magnitude;

            Vector3 normalizedDirection = direction / distance;

            if (transform.InverseTransformDirection(normalizedDirection).z > 0)
            {
                inLevel = true;
            }
            else if (transform.InverseTransformDirection(normalizedDirection).z < 0)
            {
                inLevel = false;
            }

            SetlevelVisibility();
        }
    }

    private void SetlevelVisibility()
    {
        levelObject.SetActive(inLevel);
    }

}
