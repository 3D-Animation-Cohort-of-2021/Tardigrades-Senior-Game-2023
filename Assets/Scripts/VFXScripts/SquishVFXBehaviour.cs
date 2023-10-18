using System;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Rendering.Universal;
using Random = UnityEngine.Random;

public class SquishVFXBehaviour : DecalBehaviours
{
    public GameObject[] gutsPrefab;
    public ParticleSystem bloodVFX;
    public DecalProjector bloodSplatter;
    private int gutsAmount = 3;
    private float projectileHeight = 0.5f;
    private Vector3 defaultDirection = Vector3.up;
    
    
    private void LaunchGuts(Vector3 direction)
    {
        //gets the direction normalized but we're using our own y so we take it out of the equation;
        direction.y = 0;
        direction.Normalize();
        direction *= 0.5f;
        direction.y = projectileHeight;
        
        //Randomly spawns a certain amount of the prefabs
        List<GameObject> list = new List<GameObject>();
        for (int i = 0; i < Random.Range(1, gutsAmount+1); i++)
        {
            int index = Random.Range(0, gutsPrefab.Length);
            list.Add(Instantiate(gutsPrefab[index], transform.position + direction, Random.rotation));
        }
        
        
        
        //Adds force to the prefabs rigidbodies
        foreach (GameObject prefab in list)
        {
            Rigidbody [] bodys = prefab.GetComponentsInChildren<Rigidbody>();
            foreach (Rigidbody body in bodys)
            {
                body.AddExplosionForce(3f, transform.position, 5f, Random.Range(0,.5f) ,ForceMode.Impulse);
            }
        }
        
    }
    
    private void DecalSpawn()
    {
        //spawn ray a random distance from center
        Vector3 randPos = new Vector3(transform.position.x, transform.position.y, transform.position.z);
        Ray ray = new Ray(randPos, Vector3.down);
        RaycastHit onHit;
        
        int layer_mask = LayerMask.GetMask("Terrain", "Default");
        
        if (Physics.Raycast(ray, out onHit,2f, layer_mask))
        {
            DecalProjector projectorObject = Instantiate(bloodSplatter);
            projectorObject.transform.position = onHit.point;
            projectorObject.transform.forward = onHit.normal;
            
            RandomRotation(projectorObject);
        }
    }

    public void Play()
    {
        LaunchGuts(defaultDirection);
        DecalSpawn();
        
        //ParticleSystem system = Instantiate(bloodVFX, transform.position, transform.rotation);
        bloodVFX.transform.forward = defaultDirection;
        bloodVFX.Play();
    }

    public void Play(Vector3 direction)
    {
        LaunchGuts(direction);
        DecalSpawn();
        
        //ParticleSystem system = Instantiate(bloodVFX, transform.position, transform.rotation);
        bloodVFX.transform.forward = direction;
        bloodVFX.Play();
    }
}
