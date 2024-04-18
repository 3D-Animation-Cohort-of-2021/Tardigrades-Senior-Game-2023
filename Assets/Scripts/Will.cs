using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Will : MonoBehaviour
{
    private Rigidbody rb;
    private float lifeTime = 4;
    private float time = 0;
    private float speed;
    public float distanceRadiusDamage = 1f;

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
        Collider[]colsInArea = Physics.OverlapSphere(transform.position, distanceRadiusDamage);
        foreach (Collider obj in colsInArea)
        {
            if(obj.TryGetComponent(out TardigradeBase tard))
                Destroy(gameObject);
        }
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
