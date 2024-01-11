using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PauseBehavior : MonoBehaviour
{
  public bool isPaused;

  private void OnEnable()
  {
    isPaused = Time.timeScale != 0;
  }

  public void SetTimeActive(bool val)
  {
    Time.timeScale = val ? 1 : 0;
    isPaused = !val;
  }
}
