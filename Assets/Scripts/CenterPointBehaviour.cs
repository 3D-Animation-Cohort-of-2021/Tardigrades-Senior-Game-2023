using System;
using Cinemachine;
using Unity.Mathematics;
using UnityEditor.Experimental.GraphView;
using UnityEngine;
using Random = UnityEngine.Random;

public class CenterPointBehaviour : MonoBehaviour {
    public GameObject pointObject, pigletPrefab;
    public float radius;
    public int amountToSpawn;
    
    //needed ref (Will)
    private CinemachineTargetGroup cTgroup;
    public GameObject targetGroup;
    void Start() {
        //ref to PlayerTargetGroup (Will)
        cTgroup = targetGroup.GetComponent<CinemachineTargetGroup>();
        
        
        for (int i = 0; i < amountToSpawn; i++) {
            var newPoint = RandomPointInRadius();
            var newPiglet = Instantiate(pigletPrefab, newPoint, quaternion.identity);
            newPiglet.GetComponent<FollowPointBehaviour>().pointObject = 
                Instantiate(pointObject, newPoint, quaternion.identity, transform);
            //Send new instantited to target group list (Will)
            cTgroup.AddMember(newPiglet.transform,1f,5f );
        }
    }

    private Vector3 RandomPointInRadius() {
        var currentPos = transform.position;
        return new Vector3((currentPos.x + Random.Range(-radius, radius)), currentPos.y,
            (currentPos.z + Random.Range(-radius, radius)));
    }
}
