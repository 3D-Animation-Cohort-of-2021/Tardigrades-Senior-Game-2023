using System;
using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.UI;

public class SquadUIBehavior : MonoBehaviour
{
    [SerializeField] private TextMeshProUGUI unitCounter;
    [SerializeField] private Horde_Info brain;
    public Elem elemType;
    public float thisElemCD, thisElemSecondCD;
    public Image fillImage, abilityReadyImage;
    public Image[] secondaryGlows;
    private WaitForSeconds wfs, wfss;
    private Coroutine currentRoutine;
    private int _secondaryState;
    private int currentAmt;
    private Color tempColor;
    private bool PCooldown;
    public Animator thisAnim;
    [Range(0f,1f)]
    public float secondaryAlphaReady, secondaryAlphaActive;


    private void Awake()
    {
        SetCD();
        wfs = new WaitForSeconds(.1f);
        wfss = new WaitForSeconds(thisElemSecondCD);
    }

    private void Start()
    {
        UpdateCount();
        currentAmt = brain.GetTypeCount(elemType);
        SetSecondaryState(1);
    }

    public void UpdateCount()
    {
        if(brain.GetTypeCount(elemType)==currentAmt)
            return;
        unitCounter.text = brain.GetTypeCount(elemType).ToString();
        //animate
        currentAmt = brain.GetTypeCount(elemType);
        thisAnim.SetTrigger("Flash");
    }

    public void SetCD()
    {
        thisElemCD = brain.GetCD(elemType)-.5f;
        thisElemSecondCD = brain.GetToggleCD(elemType)-.5f;
    }

    public void StartVisualCD()
    {
        if (currentRoutine != null && !PCooldown)
        {
            StopCoroutine(currentRoutine);
        }
        currentRoutine = StartCoroutine(VisualCoolDown());
    }

    public IEnumerator VisualCoolDown()
    {
        if (PCooldown)
            yield break; 
        PCooldown = true;
        float currentCDTime = 0;
        fillImage.fillAmount = 0;
        SetAbilityReady(false);
        while (currentCDTime < thisElemCD)
        {
            currentCDTime += .1f;
            fillImage.fillAmount = Mathf.Lerp(0f, 1, currentCDTime / thisElemCD);
            yield return wfs;
        }
        fillImage.fillAmount = 1;
        SetAbilityReady(true);
        PCooldown = false;
    }

    public IEnumerator SecondaryCooldown()
    {
        yield return wfss;
        SetSecondaryState(1);
    }

    public void ToggleSecondary()
    {
        switch (_secondaryState)
        {
            case 1:
                SetSecondaryState(2);
                break;
            case 2:
                SetSecondaryState(0);
                StartCoroutine(SecondaryCooldown());
                break;
            default:
                return;
        }
    }

    private void SetAbilityReady(bool status)
    {
        abilityReadyImage.enabled = status;
    }

    private void SetSecondaryState(int state)//0=off, 1 = ready, 2=active
    {
        foreach(Image image in secondaryGlows)
        {
            tempColor = image.color;
            if(state==0)
                tempColor.a = 0;
            if(state==1)
                tempColor.a =secondaryAlphaReady;
            if (state == 2)
                tempColor.a = secondaryAlphaActive;
            if (image.TryGetComponent(out RotateImage RI))
                RI.rotationSpeed = 60*state;
            image.color = tempColor;
        }
        _secondaryState = state;
    }
}
