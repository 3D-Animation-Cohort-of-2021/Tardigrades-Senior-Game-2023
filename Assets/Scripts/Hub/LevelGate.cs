using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class LevelGate : MonoBehaviour
{
    [SerializeField]
    private string _sceneName;

    [SerializeField]
    private LevelData _levelData;

    private void Start()
    {
        
        if(_levelData != null && _levelData.levelUnlocked)
        {
            SetupGate();
        }
    }

    private void SetupGate()
    {
        Collider collider = GetComponent<Collider>();

        if (_levelData.levelUnlocked)
        {
            collider.isTrigger = true;
        }
        else
        {
            collider.isTrigger = false;
        }
    }


    // Start is called before the first frame update
    private void OnTriggerEnter(Collider other)
    {
        
        if(other.tag == "Player" && other.gameObject.layer == LayerMask.NameToLayer("Center") && _levelData.levelUnlocked)
        {
           LoadScene();
        }
    }

    private void OnTriggerExit(Collider other)
    {
    }

    private void LoadScene()
    {
        SceneManager.LoadScene(_sceneName);
    }

}
