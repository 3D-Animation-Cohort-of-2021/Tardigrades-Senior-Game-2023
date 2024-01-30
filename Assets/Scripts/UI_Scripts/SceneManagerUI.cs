using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class SceneManagerUI : MonoBehaviour
{
    public string loadSimName;
    public void LoadScene(int sceneIndex)
    {
        SceneManager.LoadScene(sceneIndex);
    }

    public void SetSelectedSimName(string val)
    {
        loadSimName = val;
    }

    public void LoadSelectedSim()
    {
        SceneManager.LoadScene(loadSimName);
    }
    
    
}
