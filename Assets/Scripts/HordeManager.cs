using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HordeManager : MonoBehaviour
{
    [SerializeField]private TardigradeBase[] prefabs;
    [SerializeField]private TardigradeBase selectedTard;

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
