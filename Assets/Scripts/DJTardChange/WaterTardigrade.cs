using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WaterTardigrade : TardigradeBase
{

    protected override void ReactToStrong()
    {
        base.ReactToStrong();
        Debug.Log("the water tardigrade is barely affected by the fire");
    }
    protected override void ReactToWeak()
    {
        base.ReactToWeak();
        Debug.Log("the water tardigrade is hindered by the stone trap");
    }
}
