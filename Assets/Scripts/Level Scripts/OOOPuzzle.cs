using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.VFX;
using Random = UnityEngine.Random;

public class OOOPuzzle : MonoBehaviour
{
    public GameObject[] spawnLocations, currentSpawnedItems, itemList;//[yes,no,yes,no,yes,no]
    public GameObject exampleSpawn, currentExample;
    public int currentRound;
    public GameObject transitionSmokeFx;
    public UnityEvent correctRoundEvent, puzzleFinishedEvent, resetEvent;
    private Coroutine currentLoadRoutine;

    private void Awake()
    {
        currentRound = 1;
        currentSpawnedItems = new GameObject[spawnLocations.Length];
    }

    private void Start()
    {
        LayoutCurrentRound();
    }

    public void LayoutCurrentRound()
    {
        int wrongSpot = Random.Range(0, spawnLocations.Length);
        for (int i = 0; i < spawnLocations.Length; i++)
        {
            if(i==wrongSpot)
                currentSpawnedItems[i] = PlaceItem(i, itemList[((currentRound-1)*2)+1]);//create odd one out
            else 
                currentSpawnedItems[i] = PlaceItem(i, itemList[(currentRound-1)*2]);//create control items
        }
        currentExample = Instantiate(itemList[(currentRound-1)*2], exampleSpawn.transform.position, exampleSpawn.transform.rotation);
        PlaySmoke();
    }

    public void ClearTables()
    {
        GameObject thisItem;
        for (int i = 0; i < currentSpawnedItems.Length; i++)
        {
            thisItem = currentSpawnedItems[i];
            currentSpawnedItems[i] = null;
            Instantiate(transitionSmokeFx, thisItem.transform);
            Destroy(thisItem);
        }
        PlaySmoke();
    }

    public void ResetPuzzle()
    {
        currentRound = 1;
        NextRoundSequence(true);
        resetEvent.Invoke();
    }
    private IEnumerator LoadNextRound()
    {
        ClearTables();
        if (currentRound >= 3)
        {
            puzzleFinishedEvent.Invoke();
            yield break;
        }
        yield return new WaitForSeconds(2f);
        LayoutCurrentRound();
    }

    private void PlaySmoke()
    {
        for (int i = 0; i < spawnLocations.Length; i++)
        {
            if (spawnLocations[i].TryGetComponent(out VisualEffect vfxSmoke))
            {
                vfxSmoke.Play();
            }
        }
    }

    private GameObject PlaceItem(int spawnIndex, GameObject obj)
    {
        return Instantiate(obj, spawnLocations[spawnIndex].gameObject.transform.position,spawnLocations[spawnIndex].gameObject.transform.rotation);
    }

    public void NextRoundSequence(bool reset)
    {
        StartCoroutine(LoadNextRound());
        if (!reset)
            currentRound++;
    }
    
}
