using System;
using System.Collections;
using System.Collections.Generic;
using Unity.Mathematics;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.VFX;

public class DestroyImpact : MonoBehaviour
{
    public LayerMask groundLayer;
    public LayerMask tardigradesLayer;
    public float distanceHeightCheck, distanceRadiusDamage;
    public UnityEvent onGroundCollison;
    public GameObject indicatorObjectPrefab;
    private GameObject indicatorObject;
    public VisualEffect splatter;
    public float damage, dropDelay;
    public Elem type;

    private void Start()
    {
        Ray ray = new Ray(transform.position, Vector3.down);
        if (Physics.Raycast(ray, out RaycastHit hit, distanceHeightCheck))
        {
            Debug.Log(hit.collider.gameObject);
            indicatorObject = Instantiate(indicatorObjectPrefab, hit.point, quaternion.identity);
            StartCoroutine(DropDelay());
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
        splatter.Play();
        Debug.Log("ground");
        
    }

    public void delete()
    {
        Destroy(indicatorObject);
        Destroy(this.gameObject);
    }

    public IEnumerator DropDelay()
    {
        yield return new WaitForSeconds(dropDelay);
        GetComponent<Rigidbody>().useGravity = true;
    }
}
