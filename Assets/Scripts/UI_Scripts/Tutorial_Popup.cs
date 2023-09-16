using System;
using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.UI;

public class Tutorial_Popup : MonoBehaviour
{

    [SerializeField] private Image tutTextImage;
    public bool oneTimeUse;
    
    
    // Start is called before the first frame update
    private void Awake()
    {
        tutTextImage.gameObject.SetActive(false);
    }

    private void OnTriggerEnter(Collider other)
    {
        Debug.Log("Tutorial up");
        if (other.gameObject.GetComponent(typeof(PlayerControl)))
            tutTextImage.gameObject.SetActive(true);
    }

    private void OnTriggerExit(Collider other)
    {
        Debug.Log("Tutorial down");
        if (other.gameObject.GetComponent(typeof(PlayerControl)))
            tutTextImage.gameObject.SetActive(false);
        if(oneTimeUse)
            Destroy(this.gameObject);
    }

}
