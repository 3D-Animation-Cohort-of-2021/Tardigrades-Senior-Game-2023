using System.Collections;
using UnityEngine;
using UnityEngine.Rendering.Universal;

public class PuddleMaker : MonoBehaviour
{
    public float dripInterval;
    public Material[] puddleList;
    public DecalProjector projectorPrefab;

    private void Start()
    {
        if (dripInterval < 0.1)
        {
            dripInterval = 0.1f;
        }

        StartCoroutine(Drip());
    }

    private IEnumerator Drip()
    {
        DecalProjector projectorObject = Instantiate(projectorPrefab, transform.position, transform.rotation);

        // Creates a new material instance for the DecalProjector.
        projectorObject.material = new Material(puddleList[0]);
        yield return new WaitForSeconds(dripInterval);
        StartCoroutine(Drip());
    }
    
}
