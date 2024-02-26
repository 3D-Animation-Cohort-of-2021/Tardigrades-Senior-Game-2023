using System.Collections;
using UnityEngine;

public class TestTurret : MonoBehaviour
{
    [SerializeField] private Transform firePoint;
    [SerializeField] private GameObject bulletPrefab;
    [SerializeField] private float fireDelay = 1;
    [SerializeField] private float bulletSpeed = 20f;
    private bool isPaused = false;


    void Start()
    {
        StartCoroutine(Shoot(new WaitForSeconds(fireDelay)));
    }

    private IEnumerator Shoot(WaitForSeconds delay)
    {
        if (!isPaused)
        {
            TurretBulletBehaviour bullet = Instantiate(bulletPrefab, firePoint.position, firePoint.rotation)
                .GetComponent<TurretBulletBehaviour>();
            bullet.SetSpeed(bulletSpeed);
        }
        yield return delay;
        StartCoroutine(Shoot(delay));

    }
    
    
}
