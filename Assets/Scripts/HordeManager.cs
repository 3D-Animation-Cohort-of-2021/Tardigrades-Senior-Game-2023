using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HordeManager : MonoBehaviour
{
    [SerializeField]private TardigradeBase[] prefabs;
    [SerializeField]private TardigradeBase selectedTard;
    [SerializeField]private List <TardigradeBase> selectedTards;
    
    /// <summary>
    /// Highlights a group of Tardigrades based on type
    /// </summary>
    /// <param name="tardType">The elemental type of group that should be selected</param>
    public void SelectGroup(Elem tardType)
    {
        Material mat;
        //Turns old highlights off and clears the old selection
        foreach (TardigradeBase obj in selectedTards)
        {
            mat = obj.GetComponent<Renderer>().material;
            mat.SetFloat("_Highlight_Thickness", 0);
        }
        selectedTards.Clear();
        //Grabs new selection and Highlights them
        TardigradeBase[] allTards = GetComponentsInChildren<TardigradeBase>();
        foreach (TardigradeBase obj in allTards)
        {
            if (obj.GetElementType() == tardType)
            {
                selectedTards.Add(obj);
                mat = obj.GetComponent<Renderer>().material;
                if (mat.name != "HighlightMat (Instance)") print(obj + " needs to have highlightmat as the first material");
                mat.SetFloat("_Highlight_Thickness", 0.1f);
            }
        }
    }
    public void Mutate(Elem tardType)
    {
        //get selected tards stats like hp and position
        Transform trans = selectedTard.transform;
        float oldHealth = selectedTard.health;
        //destroy the old tard
        Destroy(selectedTard.gameObject);
        //instatiate new one in its place
        foreach (TardigradeBase obj in prefabs)
        {
            if (obj.GetElementType() == tardType)
            {
                selectedTard = Instantiate(obj, trans.position, trans.rotation);
                selectedTard.health = oldHealth;
            }
        }
    }
}
