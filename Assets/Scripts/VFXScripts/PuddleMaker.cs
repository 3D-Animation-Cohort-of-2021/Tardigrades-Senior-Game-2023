using System.Collections;
using UnityEngine;
using UnityEngine.Rendering.Universal;

public class PuddleMaker : DecalBehaviours
{
    public float dripInterval = 0.5f;
    public float scale = 0.5f;
    public float sizeRange = 0.5f;
    public float spawnRange = 0.5f;
    public Material[] puddleList;
    public DecalProjector projectorPrefab;

    private float depth = 0.2f;
    
    

    private void Start()
    {
        if (dripInterval < 0.1f)
        {
            dripInterval = 0.1f;
        }

        if (sizeRange > 0.9f)
        {
            sizeRange = 0.9f;
        }
        if (sizeRange < 0)
        {
            sizeRange = 0;
        }
        if (scale < .1f)
        {
            scale = .1f;
        }

        StartCoroutine(Drip());
    }

    private IEnumerator Drip()
    {
        //spawn ray a random distance from center
        Vector3 randPos = new Vector3(transform.position.x + Random.Range(-spawnRange,spawnRange), transform.position.y, transform.position.z + Random.Range(-spawnRange,spawnRange));
        Ray ray = new Ray(randPos, Vector3.down);
        RaycastHit onHit;
        
        if (Physics.Raycast(ray, out onHit,2f))
        {
            DecalProjector projectorObject = Instantiate(projectorPrefab);
            projectorObject.transform.position = onHit.point;
            projectorObject.transform.forward = onHit.normal;
            
            RandomRotation(projectorObject);

            //Randomly scales object based off of size range
            projectorObject.size *= scale;
            float sizePercent = projectorObject.size.x * sizeRange;
            float randScale = Random.Range(projectorObject.size.x - sizePercent, projectorObject.size.x);
            projectorObject.size = new Vector3(randScale, randScale, depth);

            int randIndex = Random.Range(0, puddleList.Length);
            // Creates a new material instance for the Decal Projector.
            projectorObject.material = new Material(puddleList[randIndex]);
        }

        //randomizes the interval a bit
        float randInterval = Random.Range(0, dripInterval * 0.75f);
        yield return new WaitForSeconds(dripInterval - randInterval);
        
        StartCoroutine(Drip());
    }
    
}
