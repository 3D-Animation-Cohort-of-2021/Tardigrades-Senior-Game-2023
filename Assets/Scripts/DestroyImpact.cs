using System;
using System.Collections;
using System.Collections.Generic;
using Unity.Mathematics;
using UnityEngine;
using UnityEngine.Events;

public class DestroyImpact : MonoBehaviour
{
    public LayerMask groundLayer;
    public LayerMask tardigradesLayer;
    public float distanceHeightCheck, distanceRadiusDamage;
    public UnityEvent onGroundCollison;
    public GameObject indicatorObjectPrefab;
    private GameObject indicatorObject;
    public float damage;
    public Elem type;

    private void Start()
    {
        Ray ray = new Ray(transform.position, Vector3.down);
        if (Physics.Raycast(ray, out RaycastHit hit, distanceHeightCheck,groundLayer))
        {
            Debug.Log(hit.collider.gameObject);
            indicatorObject = Instantiate(indicatorObjectPrefab, hit.point, quaternion.identity);
        }
        else
        {
            Debug.Log("No Ground Found");
            Destroy(gameObject);
        }
    }

    private void OnCollisionEnter(Collision collision)
    {
        Collider[]colsInArea = Physics.OverlapSphere(transform.position, distanceRadiusDamage);
        foreach (Collider obj in colsInArea)
        {
            if(obj.TryGetComponent(out TardigradeBase tard))
                tard.Damage(damage,type);
        }
        onGroundCollison.Invoke();
        Debug.Log("ground");
        
    }

    public void delete()
    {
        Destroy(indicatorObject);
        Destroy(this.gameObject);
    }
}