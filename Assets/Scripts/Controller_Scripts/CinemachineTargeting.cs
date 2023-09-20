using System;
using System.Collections;
using System.Collections.Generic;
using Cinemachine;
using UnityEngine;

public class CinemachineTargeting : MonoBehaviour
{
    //Made by Will Lemmons
    //Found most of it on unity threads by: v2-Ton-Studios
    private CinemachineTargetGroup _targetGroup;
    [SerializeField]
    private float targetEase = 0.15f ;
    //adds the squads to the target group list

    private void Awake()
    {
        _targetGroup = GetComponent<CinemachineTargetGroup>();
    }

    public void AddTarget (Transform target, float targetRadius)
    {
        if (_targetGroup != null)
        {
            if (_targetGroup.FindMember(target) == -1)
            {
                _targetGroup.AddMember(target, 0, targetRadius);
                StartCoroutine(easeInMember(target));
            }
        }
    }
    //eases in the new squad in varying the weight of the object
    IEnumerator easeInMember(Transform target)
    {
        int index = _targetGroup.FindMember(target);
        CinemachineTargetGroup.Target t = _targetGroup.m_Targets[index];
        while (t.weight < 1f)
        {
            t.weight = Mathf.MoveTowards(t.weight, 1f, targetEase * Time.deltaTime);
            index = _targetGroup.FindMember(target);
            if (index >= 0)
            {
                _targetGroup.m_Targets[index] = t;
            }
            yield return new WaitForSeconds(0.01f);
        }
        t.weight = 1f;
    }
    //eases out and then removes the squad from the target group
    /*IEnumerator easeOutMember(Transform target)
    {
        int index = _targetGroup.FindMember(target);
        CinemachineTargetGroup.Target t = _targetGroup.m_Targets[index];
        while (t.weight > 0f)
        {
            t.weight = Mathf.MoveTowards(t.weight, 0, targetEase * Time.deltaTime);
            index = _targetGroup.FindMember(target);
            if (index >= 0)
            {
                _targetGroup.m_Targets[index] = t;
            }
            yield return new WaitForSeconds(0.01f);
        }
        t.weight = 0;
        _targetGroup.RemoveMember(target);
    }*/
}
