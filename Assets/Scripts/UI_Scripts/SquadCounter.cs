using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;

public class SquadCounter : MonoBehaviour
{
[SerializeField] private TextMeshProUGUI unitCounter;
[SerializeField] private UI_Brain brain;
public Elem countType;

public void UpdateCount()
{
    unitCounter.text = brain.GetNum(countType).ToString();
}

}
