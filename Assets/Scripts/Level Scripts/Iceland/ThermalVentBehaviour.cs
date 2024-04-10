
using UnityEngine;
using UnityEngine.Events;

public class ThermalVentBehaviour : MonoBehaviour, IDamageable

{
    public UnityEvent onAwake, onFireDamage;
    
    private GameObject prefabParent;
    private IDamageable _damageableImplementation;
    
    public void Awake()
    {
        onAwake.Invoke();
        prefabParent = gameObject;
    }


    public void Damage(float dmgNum, Elem dmgType, DeathType deathType = default)
    {
        if (dmgType == Elem.Fire)
        {
            Debug.Log("Warm Up Tardigrades");
            onFireDamage.Invoke();
            TurnOffChildObject();
        }
    }

    public void TurnOffChildObject()
    {
        GameObject childObject = prefabParent.transform.GetChild(0).gameObject;
        childObject.SetActive(false);
    }
}


