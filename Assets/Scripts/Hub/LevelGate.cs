using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class LevelGate : MonoBehaviour
{
    [SerializeField]
    private string _sceneName;


    // Start is called before the first frame update
    private void OnTriggerEnter(Collider other)
    {
        
        if(other.tag == "Player" && other.gameObject.layer == LayerMask.NameToLayer("Center"))
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
