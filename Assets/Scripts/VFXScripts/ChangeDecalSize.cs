using System.Collections;
using UnityEngine;
using UnityEngine.Rendering.Universal;

[RequireComponent(typeof(DecalProjector))]
public class ChangeDecalSize : MonoBehaviour
{
    private DecalProjector decal;
    void Start()
    {
        decal = GetComponent<DecalProjector>();
        StartCoroutine(Shrink());
    }

    private IEnumerator Shrink()
    {
        yield return new WaitForSeconds(.1f);
        decal.size *= .9f;
        StartCoroutine(Shrink());
    }
}
