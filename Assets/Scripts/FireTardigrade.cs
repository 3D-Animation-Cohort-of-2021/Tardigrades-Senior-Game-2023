using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FireTardigrade : TardigradeBase
{
    private void Start()
    {
        type = Elem.Fire;
    }

    protected override void ReactToStrong()
    {
        base.ReactToStrong();
        Debug.Log("The fire tardigrade is too quick and hot for the stone trap");
    }

    protected override void ReactToWeak()
    {
        base.ReactToWeak();
        Debug.Log("The fire tardigrade is nearly put out by the water trap");
    }
}
