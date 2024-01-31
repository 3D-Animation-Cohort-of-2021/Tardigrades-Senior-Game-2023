using System;
using UnityEngine;

[RequireComponent(typeof(ParticleSystem))]
[RequireComponent(typeof(Animator))]
public class CrackedIceBehaviour : MonoBehaviour
{
    private Animator aniController;
    private ParticleSystem system;
    private void Start()
    {
        aniController = GetComponent<Animator>();
        system = GetComponent<ParticleSystem>();
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.TryGetComponent<TardigradeBase>( out TardigradeBase tard))
        {
            if (aniController.GetCurrentAnimatorStateInfo(0).IsName("IceCracking3"))
            {
                Destroy(this.gameObject);
            }
            system.Play();
            aniController.SetTrigger("CrackTrigger");
        }
    }
}
