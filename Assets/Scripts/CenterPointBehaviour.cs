using Unity.Mathematics;
using UnityEngine;
using Random = UnityEngine.Random;

public class CenterPointBehaviour : MonoBehaviour {
    public GameObject pointObject, pigletPrefab;
    public float radius;
    public int amountToSpawn;
    void Start() {
        for (int i = 0; i < amountToSpawn; i++) {
            var newPoint = RandomPointInRadius();
            var newPiglet = Instantiate(pigletPrefab, newPoint, quaternion.identity);
            newPiglet.GetComponent<FollowPointBehaviour>().pointObject = 
                Instantiate(pointObject, newPoint, quaternion.identity, transform);
        }
    }

    private Vector3 RandomPointInRadius() {
        var currentPos = transform.position;
        return new Vector3((currentPos.x + Random.Range(-radius, radius)), currentPos.y,
            (currentPos.z + Random.Range(-radius, radius)));
    }
}
