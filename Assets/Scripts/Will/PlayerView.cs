using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerView : MonoBehaviour
//Received help from tutorial from Sebastion Lague
//Script writen by William Lemmons
{
    public float viewRadus;
    [Range(0,360)]
    public float viewAngle = 360f;

    public LayerMask obstacleMask;
    public float meshRes;


    private void Update()
    {
        drawView();
    }

    private void drawView()
    {
        int stepCount = Mathf.RoundToInt(viewAngle * meshRes);
        float stepAngleSize = viewAngle / stepCount;

        for (int i = 0; i < stepCount; i++)
        {
            float angle = transform.eulerAngles.y - viewAngle / 2 + stepAngleSize * i;
            Debug.DrawLine(transform.position, transform.position + DirFromAngle(angle, true) * viewRadus, Color.red);
        }
    }
    public Vector3 DirFromAngle(float angleDegree, bool globalAngle)
    {
        if (!globalAngle)
        {
            angleDegree += transform.eulerAngles.y;
        }
        return new Vector3(Mathf.Sin(angleDegree * Mathf.Deg2Rad), 0, Mathf.Cos(angleDegree * Mathf.Deg2Rad));
    }
    public struct ViewCastInfo
    {
        public bool hit;
        public Vector3 point;
        public float dst;
        public float angle;
        
        
    }
}
