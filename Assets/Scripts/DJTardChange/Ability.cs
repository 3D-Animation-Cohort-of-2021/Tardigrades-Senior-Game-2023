using System.Collections;
using UnityEngine;

/// <summary>
/// Tracks ability cooldowns.
/// <remarks>Written by DJ</remarks>
/// </summary>
public class Ability : MonoBehaviour
{
    public float cooldown = 0f;
    public bool activatable = true;

    /// <summary>
    ///  Starts the CooldownEnumerator coroutine that tracks the ability cooldown.
    /// </summary>
    public void Cooldown()
    {
        StartCoroutine(CooldownEnumerator());
    }
    
    private IEnumerator CooldownEnumerator()
    {
        activatable = false;
        yield return new WaitForSeconds(cooldown);
        activatable = true;
    }
}
