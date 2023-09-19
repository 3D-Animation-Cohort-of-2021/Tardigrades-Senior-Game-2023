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
public float thisElemCD;
public Image fillImage, abilityReadyImage;
private WaitForSeconds wfs;
private Coroutine currentRoutine;


private void Awake()
{
    wfs = new WaitForSeconds(.1f);
    SetCD();
}

private void Start()
{
    UpdateCount();
}

public void UpdateCount()
{
    unitCounter.text = brain.GetTypeCount(elemType).ToString();
}

public void SetCD()
{
    thisElemCD = brain.GetCD(elemType);
}

public void StartVisualCD()
{
    if (currentRoutine != null)
    {
        StopCoroutine(currentRoutine);
    }
    currentRoutine = StartCoroutine(VisualCoolDown());
}

public IEnumerator VisualCoolDown()
{
    float currentCDTime = 0;
    fillImage.fillAmount = 0;
    SetAbilityReady(false);
    while (currentCDTime < thisElemCD)
    {
        currentCDTime += .1f;
        Debug.Log(currentCDTime);
        fillImage.fillAmount = Mathf.Lerp(0f, 1, currentCDTime / thisElemCD);
        yield return wfs;
    }
    fillImage.fillAmount = 1;
    SetAbilityReady(true);
}

private void SetAbilityReady(bool status)
{
    abilityReadyImage.enabled = status;
}
}
