using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Rendering.Universal;

public class SquishParticleBehaviour : DecalBehaviours
{
    public DecalProjector bloodDropDecal;

    private ParticleSystem system;
    private List<ParticleCollisionEvent> collisions;

    private void Start()
    {
        system = GetComponent<ParticleSystem>();
        collisions = new List<ParticleCollisionEvent>();
    }

    private void OnParticleCollision(GameObject other)
    {
        DecalProjector tempProjector;
        system.GetCollisionEvents(other, collisions);
        
        foreach (ParticleCollisionEvent collision in collisions)
        {
            tempProjector = Instantiate(bloodDropDecal, collision.intersection, transform.rotation);
            tempProjector.transform.forward = collision.normal;
            RandomRotation(tempProjector);
        }
        
    }
}
