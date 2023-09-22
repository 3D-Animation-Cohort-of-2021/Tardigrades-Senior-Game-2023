using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RotateImage : MonoBehaviour
{
    public float rotationSpeed;
    private RectTransform imageTransform;

    private void Awake()
    {
        imageTransform = GetComponent<RectTransform>();
    }

    private void Update()
    {
        imageTransform.Rotate(Vector3.forward, rotationSpeed*Time.deltaTime);
    }
}
