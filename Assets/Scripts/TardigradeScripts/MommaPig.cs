using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class MommaPig : MonoBehaviour
{
    private Animator _tarAnimator;
    public GameObject targetObject;
    public float maxDistance;
    private bool isChecking;

    private void Awake()
    {
        _tarAnimator = GetComponent<Animator>();
    }

    private void Start()
    {
        isChecking = true;
    }

    public void UpdateMovement(float relativeSpeed, Vector3 centerPosition)
    {
        if (_tarAnimator != null)
        {
            _tarAnimator.SetFloat("speedPercent", relativeSpeed);
            transform.position = centerPosition;
        }
    }

    public void UpdateRotation(Vector3 lookDir)
    {
        transform.LookAt(lookDir);
    }
}
