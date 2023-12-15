using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.VFX;

[RequireComponent(typeof(VisualEffect))]
public class VFXEventBehavior : MonoBehaviour
{
  private VisualEffect effect;

  private void Awake()
  {
    effect = GetComponent<VisualEffect>();
    effect.initialEventName = "";
  }

  public void PlayEffect()
  {
    effect.Play();
  }

  public void StopEffect()
  {
    effect.Stop();
  }
}
