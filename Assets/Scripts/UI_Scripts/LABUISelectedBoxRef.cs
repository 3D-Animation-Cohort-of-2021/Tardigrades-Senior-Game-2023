using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LABUISelectedBoxRef : MonoBehaviour
{
    public LabBoxBehavior selectedBox;

    public void closeSelectedBox()
    {
        selectedBox.GrabHordeAndClose();
    }

    public void setSelectedBox(LabBoxBehavior box)
    {
        selectedBox = box;
    }
}
