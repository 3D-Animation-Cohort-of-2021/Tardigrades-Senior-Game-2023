using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
[RequireComponent(typeof(Animator))]

public class FallingTreeBehavior : MonoBehaviour
{
    public GameObject navmeshBlocker;
    private Animator anim;

    private void Awake()
    {
        anim = GetComponent<Animator>();
    }

    public void MakeTreeFall()
    {
        anim.SetTrigger("Fall");
    }

    public void MoveBlocker()
    {
        navmeshBlocker.transform.localPosition = new Vector3(0, -7, 0);
    }
}
