using System;
using UnityEngine;
using UnityEngine.AI;
using UnityEngine.Rendering.Universal;

[RequireComponent(typeof(ParticleSystem))]
[RequireComponent(typeof(NavMeshObstacle))]
[RequireComponent(typeof(Animator))]
[RequireComponent(typeof(DeathZone))]
public class CrackedIceBehaviour : MonoBehaviour
{
    private Animator aniController;
    [SerializeField]private ParticleSystem mainSystem;
    [SerializeField]private ParticleSystem subSystem;
    [SerializeField]private GameObject crackPrefab;
    private float time = 0;
    private bool isReady = true;
    private float cooldown = 1f;

    public AK.Wwise.Event finalBreakAudio;
    public AK.Wwise.Event crackingSequenceAudio;
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
                GetComponent<DeathZone>().enabled = true;
                GetComponent<NavMeshObstacle>().enabled = true;
                GetComponent<MeshRenderer>().enabled = false;
                //Instantiate(crackPrefab, transform.position, transform.rotation);
                Instantiate(crackPrefab, transform.position, transform.rotation);
                finalBreakAudio.Post(gameObject);
            }
            //Cracks
            else
            {
                mainSystem.Play(false);
                aniController.SetTrigger("CrackTrigger");
                crackingSequenceAudio.Post(gameObject);
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
