using System;
using UnityEngine;

[RequireComponent(typeof(ParticleSystem))]
[RequireComponent(typeof(Animator))]
public class CrackedIceBehaviour : MonoBehaviour
{
    private Animator aniController;
    [SerializeField]private ParticleSystem mainSystem;
    [SerializeField]private ParticleSystem subSystem;
    private float time = 0;
    private bool isReady = true;
    private float cooldown = 1.5f;
    private void Start()
    {
        aniController = GetComponent<Animator>();
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.TryGetComponent<TardigradeBase>( out TardigradeBase tard) && isReady)
        {
            //Final Break
            if (aniController.GetCurrentAnimatorStateInfo(0).IsName("IceCracking3"))
            {
                subSystem.Play(false);
                //Destroy(this.gameObject);
            }
            //Cracks
            else
            {
                mainSystem.Play(false);
                aniController.SetTrigger("CrackTrigger");
            }

            time = 0;
            isReady = false;
        }
    }

    private void Update()
    {
        time += Time.deltaTime;
        if (time >= cooldown)
        {
            isReady = true;
        }
    }
}
