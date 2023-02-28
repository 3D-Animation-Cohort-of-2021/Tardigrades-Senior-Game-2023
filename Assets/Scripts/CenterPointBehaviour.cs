using Unity.Mathematics;
using UnityEngine;
using Random = UnityEngine.Random;

public class CenterPointBehaviour : MonoBehaviour {
    public GameObject pointObject, pigletPrefab;
    public float radius;
    public int amountPerGroup, amountOfGroups;
    void Start() {
        for (int i = 0; i < amountOfGroups; i++) {
            var groupPoint =
                Instantiate(pointObject, RandomPointInRadius(), quaternion.identity, transform);
            for (int j = 0; j < amountPerGroup; j++) {
                var newPos = RandomPointInRadius();
                var newPiglet = Instantiate(pigletPrefab, newPos, quaternion.identity);
                newPiglet.GetComponent<FollowPointBehaviour>().pointObject = groupPoint;
            }
        }
    }

    private Vector3 RandomPointInRadius() {
        var currentPos = transform.position;
        return new Vector3((currentPos.x + Random.Range(-radius, radius)), currentPos.y,
            (currentPos.z + Random.Range(-radius, radius)));
    }
}
