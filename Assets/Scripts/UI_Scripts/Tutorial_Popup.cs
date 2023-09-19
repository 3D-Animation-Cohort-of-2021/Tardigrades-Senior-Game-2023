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
        }
    }

    private void OnTriggerExit(Collider other)
    {
        if (other.gameObject.GetComponent(typeof(PlayerControl)))
        {
            TutAnim.SetBool("Active", false);
        }
        if(oneTimeUse)
            Destroy(this.gameObject);
    }

}
