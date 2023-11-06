using System;
using System.Collections;
using System.Collections.Generic;
using Unity.VisualScripting;
using UnityEngine;
using UnityEngine.Events;

[RequireComponent(typeof(SphereCollider))]
public class Pattern_Plate : MonoBehaviour
{
    public bool isRunning;
    public float checkTickTime;
    private WaitForSeconds wfs;
    public UnityEvent checkEvent, correctPatternEvent, incorrectPatternEvent, finishEvent;
    private Coroutine currentRoutine;//{fire, water, stone} 
    public Formation[] firstMatchPattern, secondMatchPattern, finalMatchPattern, squadPatterns;
    private Formation[][] formationList;
    private Collider[] cols;
    private Vector3 adjustedScale;
    private float sphereRadius;
    private int currentPatternIndex;
    private SphereCollider _collider;

    private void Awake()
    {
        isRunning = true;
        wfs = new WaitForSeconds(checkTickTime);
        _collider = GetComponent<SphereCollider>();
        _collider.isTrigger = true;
        squadPatterns = new Formation[3];
        adjustedScale = transform.lossyScale;
        sphereRadius = _collider.radius * Mathf.Max(adjustedScale.x, adjustedScale.y, adjustedScale.z);
        currentPatternIndex = 0;
    }

    // Start is called before the first frame update
    void Start()
    {
        formationList = new Formation[][]{ firstMatchPattern, secondMatchPattern, finalMatchPattern };
        currentRoutine = StartCoroutine(CheckingRoutine());
    }

    // Update is called once per frame
    public IEnumerator CheckingRoutine()
    {
        while (isRunning)
        {
            yield return wfs;
            Debug.Log("Checking patterns");
            checkEvent.Invoke(); //for visuals (light up plate)
            CheckPatterns();
        }
    }


    public void CheckPatterns()
    {
        ClearSquadPatterns();
        cols = Physics.OverlapSphere(transform.position, sphereRadius);
        foreach (Collider col in cols)
        {
            if (col.TryGetComponent(out SquadBrain brain))
            {
                if (brain._squadType == Elem.Fire)
                    squadPatterns[0] = brain._formation;
                else if (brain._squadType == Elem.Water)
                    squadPatterns[1] = brain._formation;
                else if (brain._squadType == Elem.Stone)
                    squadPatterns[2] = brain._formation;
                Debug.Log(squadPatterns);
            }
        }
        if(squadPatterns==firstMatchPattern)
        {
            correctPatternEvent.Invoke();
            Debug.Log("FUCK YEA");
            currentPatternIndex++;
            //AND if last round, invoke finish event, if not last round, move to next pattern
        }
        else
        {
            currentPatternIndex = 0;
            incorrectPatternEvent.Invoke();
        }
        //if not correct, invoke incorrect event and move back to first pattern.
    }

    private void ClearSquadPatterns()
    {
        for (int i = 0; i < squadPatterns.Length; i++)
        {
            squadPatterns[i] = Formation.Cluster;
        }
    }

}
