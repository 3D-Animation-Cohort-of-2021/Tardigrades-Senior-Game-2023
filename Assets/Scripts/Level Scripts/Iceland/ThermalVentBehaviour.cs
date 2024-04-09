
using UnityEngine;
using UnityEngine.Events;

public class ThermalVentBehaviour : MonoBehaviour, IDamageable

{
    public UnityEvent onAwake, onFireDamage;
    public string prefixToTurnOff;
    public GameObject prefabObject;
    private IDamageable _damageableImplementation;
    public float activationRadius = 5f;
    
    public void Awake()
    {
        onAwake.Invoke();
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
        GameObject childObject = prefabObject.transform.GetChild(0).gameObject;
        childObject.SetActive(false);
    }

    /*public void TurnOffChildObject()
    {
        Collider[] colliders = Physics.OverlapSphere(transform.position, activationRadius);

        foreach (Collider collider in colliders)
        {
            if (collider.gameObject != gameObject && gameObject.name.StartsWith(prefixToTurnOff))
            {
                collider.gameObject.SetActive(true);
                gameObject.SetActive(false);
            }
        }
    }*/
}


