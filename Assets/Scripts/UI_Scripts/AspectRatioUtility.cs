using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AspectRatioUtility : MonoBehaviour
{
    private void Start()
    {
        Adjust();
    }

    public void Adjust()
    {
        float targetAspect = 16.0f / 9.0f;
        float windowAspect = (float) Screen.width / (float) Screen.height;
        float scaleHeight = windowAspect / targetAspect;
        Camera cam = GetComponent<Camera>();
        if (scaleHeight < 1.0f)
        {
            Rect rect = cam.rect;

            rect.width = 1f;
            rect.height = scaleHeight;
            rect.x = 0;
            rect.y = (1f - scaleHeight) / 2f;

            cam.rect = rect;
        }
        else
        {
            float scaleWidth = 1f / scaleHeight;

            Rect rect = cam.rect;
            rect.width = scaleWidth;
            rect.height = 1f;
            rect.x = (1f - scaleWidth) / 2f;
            rect.y = 0;

            cam.rect = rect;
        }
    }
}
