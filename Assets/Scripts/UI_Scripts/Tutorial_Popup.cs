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
    private Animator TutAnim;
    // public AK.Wwise.Event flyInFX;
    // public AK.Wwise.Event flyOutFX;
    
    // Start is called before the first frame update
    private void Awake()
    {
        TutAnim = tutTextImage.GetComponent<Animator>();
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.GetComponent(typeof(PlayerControl)))
        {
            TutAnim.SetBool("Active", true);
           // flyInFX.Post(gameObject);
        }
    }

    private void OnTriggerExit(Collider other)
    {
        if (other.gameObject.GetComponent(typeof(PlayerControl)))
        {
            TutAnim.SetBool("Active", false);
           // flyOutFX.Post(gameObject);
        }
        if(oneTimeUse)
            Destroy(this.gameObject);
    }

}
