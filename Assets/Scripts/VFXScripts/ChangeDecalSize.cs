using System.Collections;
using UnityEngine;
using UnityEngine.Rendering.Universal;

[RequireComponent(typeof(DecalProjector))]
public class ChangeDecalSize : MonoBehaviour
{
    private DecalProjector decal;
    public float startDelay;
    private bool didDelay;
    void Start()
    {
        decal = GetComponent<DecalProjector>();
        StartCoroutine(Shrink());
    }

    private IEnumerator Shrink()
    {
        if (!didDelay)
        {
            yield return new WaitForSeconds(startDelay);
            didDelay = true;
        }
        yield return new WaitForSeconds(.1f);
        decal.size *= .9f;
        StartCoroutine(Shrink());
    }
}
