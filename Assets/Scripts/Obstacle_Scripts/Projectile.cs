using System.Collections;
using UnityEngine;
using UnityEngine.Events;

public class Projectile : MonoBehaviour
{
    [SerializeField] private float speed, lifeSpan;
    public UnityEvent lifeCycleEvent;
    private Coroutine lifeRoutine;
    private void Start()
    {
       lifeRoutine = StartCoroutine(lifeCycle());
    }

    private void Update()
    {
        transform.position += transform.forward * speed * Time.deltaTime;
    }

    private IEnumerator lifeCycle()
    {
        yield return new WaitForSeconds(lifeSpan);
        lifeCycleEvent.Invoke();
    }
}
