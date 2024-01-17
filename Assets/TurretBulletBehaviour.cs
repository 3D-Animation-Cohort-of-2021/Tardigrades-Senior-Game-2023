using UnityEngine;

public class TurretBulletBehaviour : MonoBehaviour
{
    private Rigidbody rb;
    private float lifeTime = 4;
    private float time = 0;
    private float speed;

    void Start()
    {
        speed *= 10;
        rb = GetComponent<Rigidbody>();
        rb.AddForce(transform.forward*speed);
        
    }

    public void SetSpeed(float newSpeed)
    {
        speed = newSpeed;
    }

    private void OnTriggerEnter(Collider other)
    {
        Destroy(gameObject);
    }

    private void Update()
    {
        time += Time.deltaTime;
        if (time >= lifeTime)
        {
            Destroy(gameObject);
        }
    }
}
