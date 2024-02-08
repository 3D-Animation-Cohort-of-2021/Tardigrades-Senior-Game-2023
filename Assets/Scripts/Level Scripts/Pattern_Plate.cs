using System;
using System.Collections;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.VFX;

[RequireComponent(typeof(SphereCollider))]
[RequireComponent(typeof(Animator))]
public class Pattern_Plate : MonoBehaviour, IReset
{
    public bool isRunning, isCorrect;
    public float checkTickTime, checkCooldownTime;
    private WaitForSeconds wfs, wfc;
    public UnityEvent checkEvent, correctPatternEvent, correctPatternEvent2, correctPatternEvent3, incorrectPatternEvent, finishEvent;
    public VisualEffect correctPulse, incorrectPulse;
    private Coroutine currentRoutine;//{fire, water, stone} 
    public Formation[] firstMatchPattern, secondMatchPattern, finalMatchPattern, squadPatterns;
    private Formation[][] formationList;
    private Collider[] cols;
    private Vector3 adjustedScale;
    private float sphereRadius;
    private int currentPatternIndex;
    private SphereCollider _collider;
    private Animator anim;
    private bool isChecking;
    
    public bool shouldReset { get; set; }

    private void Awake()
    {
        isRunning = true;
        isChecking = false;
        wfs = new WaitForSeconds(checkTickTime);
        wfc = new WaitForSeconds(checkCooldownTime);
        _collider = GetComponent<SphereCollider>();
        _collider.isTrigger = true;
        squadPatterns = new Formation[3];
        adjustedScale = transform.lossyScale;
        sphereRadius = _collider.radius * Mathf.Max(adjustedScale.x, adjustedScale.y, adjustedScale.z);
        currentPatternIndex = 0;
        isCorrect = false;
        anim = GetComponent<Animator>();
        shouldReset = true;
    }

    // Start is called before the first frame update
    void Start()
    {
        formationList = new Formation[][]{ firstMatchPattern, secondMatchPattern, finalMatchPattern };
    }

    // Update is called once per frame
    public IEnumerator CheckingRoutine()
    {
        isChecking = true;
        anim.SetTrigger("StartFill");
        yield return wfs;
        Debug.Log("Checking patterns");
        checkEvent.Invoke(); //for visuals (light up plate)
        CheckPatterns();
        yield return wfc;
        isChecking = false;
    }


    public void CheckPatterns()
    {
        isCorrect = true;
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

        for (int i = 0; i < 2; i++)
        {
            if (squadPatterns[i] != formationList[currentPatternIndex][i])
            {
                isCorrect = false;
            }
        }
        if(isCorrect)
        {
            correctPatternEvent.Invoke();
            correctPulse.Play();
            Debug.Log("FUCK YEA");
            switch (currentPatternIndex)
            {
                case 0:
                    correctPatternEvent.Invoke();
                    currentPatternIndex++;
                    break;
                case 1:
                    correctPatternEvent2.Invoke();
                    currentPatternIndex++;
                    break;
                case 2:
                    correctPatternEvent3.Invoke();
                    finishEvent.Invoke();
                    isRunning = false;
                    break;
                default:
                    break;
            }
        }
        else//if is not correct
        {
            currentPatternIndex = 0;
            incorrectPatternEvent.Invoke();
            incorrectPulse.Play();
        }
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.TryGetComponent(out SquadManager pc)&&!isChecking)
        {
            Debug.Log("Checking...");
            currentRoutine = StartCoroutine(CheckingRoutine());
        }
    }

    private void ClearSquadPatterns()
    {
        for (int i = 0; i < squadPatterns.Length; i++)
        {
            squadPatterns[i] = Formation.Cluster;
        }
    }

    public void Reset()
    {
        if(shouldReset)
        {
            Debug.Log(gameObject+" has reset");
            if(currentRoutine!=null) 
                StopCoroutine(currentRoutine);
            incorrectPatternEvent.Invoke();
            currentPatternIndex = 0;
            isCorrect = false;
            isChecking = false;
            isRunning = true;
        }
    }
}
