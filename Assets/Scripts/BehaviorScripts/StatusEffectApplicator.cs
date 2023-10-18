using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.VFX;

//Created by: Marshall Krueger 10/4/23
//Purpose: Apply status effects to tardigrade

public class StatusEffectApplicator : MonoBehaviour
{

    protected Status _statusEffect;

    public VisualEffect _statusVisualEffect;

    public VisualEffectAsset _burningAsset;
    public GameObject _burningObject;

    public VisualEffectAsset _wetAsset;
    public GameObject _wetObject;


    public VisualEffectAsset _muddyAsset;
    public GameObject _muddyObject;



    public bool SetStatus(Status newStatus, ToggleAbility secondary = null, float effectTime = 0)
    {
        bool statusChanged = false;

        if (secondary != null && newStatus != _statusEffect && secondary.activatable && _statusEffect != Status.None)
        {
            if (secondary.ToggleStatus())
            {
                statusChanged = true;
            }
        }

        if(newStatus != _statusEffect && _statusEffect != Status.None)
        {
            newStatus = Status.None;
        }
        

        switch (newStatus)
        {
            case Status.None:
                _statusVisualEffect.Stop();
                _statusVisualEffect.visualEffectAsset = null;
                break;
            case Status.Wet:
                _statusVisualEffect.visualEffectAsset = _wetAsset;
                break;
            case Status.Burning:
                _statusVisualEffect.visualEffectAsset = _burningAsset;
                break;
            case Status.Muddy:
                _statusVisualEffect.visualEffectAsset = _muddyAsset;
                break;
        }

        if (_burningObject != null)
        {
            _burningObject.SetActive(newStatus == Status.Burning);
        }
        if (_wetObject != null)
        {
            _wetObject.SetActive(newStatus == Status.Wet);
        }
        if (_muddyObject != null)
        {
            _muddyObject.SetActive(newStatus == Status.Muddy);
        }

        if (newStatus != Status.None && _statusVisualEffect.visualEffectAsset != null)
        {
            _statusVisualEffect.Play();
        }

        return statusChanged;
    }

    /// <summary>
    /// Purpose: Timer to remove status effect
    /// </summary>
    /// <param name="effectTime">time until effect is removed</param>
    private IEnumerator RemoveStatus(float effectTime, ToggleAbility secondary)
    {
        yield return new WaitForSeconds(effectTime);
        SetStatus(Status.None, secondary);
    }

    public Status GetStatus()
    {
        return _statusEffect;
    }


}
