using System;
using System.Runtime.Versioning;
using UnityEngine;
public abstract class TardigradeBase : MonoBehaviour
{
    [SerializeField]public float health = 5;
    protected float speed;
    protected float weaknessMultiplier = 0.5f;
    [SerializeField]protected Elem type;
    [SerializeField]protected MaterialListSO tardigradeMaterial;
    public GameObject abilityPrefab;



    /// <summary>
    /// Purpose: Calculates type based damage and subtracts it from health
    /// </summary>
    /// <param name="other">The Element component of the triggering object</param>
    protected void TakeDamage(Element other)
    {
        float bonusDamage = other.IsWeak(type) * weaknessMultiplier * other.GetDamage();
        if (other.IsWeak(type)==1)
            ReactToWeak();
        else if (other.IsWeak(type)==-1)
            ReactToStrong();
        health -= (other.GetDamage() + bonusDamage);
        
        print("Damage Taken: "+ (other.GetDamage() + bonusDamage));
    }
    public string GetElementTypeString()
    {
        return type.ToString();
    }

    public Elem GetElementType()
    {
        return type;
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.GetComponent<Element>())
        {
            //print(other.GetComponent<Element>().GetType());
            TakeDamage(other.GetComponent<Element>());
        }
    }

    protected virtual void ReactToWeak()
    {
        Debug.Log(gameObject + "is weak to that damage");
    }

    protected virtual void ReactToStrong()
    {
        Debug.Log(gameObject + "is resistant to that damage");
    }

    private void UpdateAppearance()
    {
        MaterialSetSO materialSetSO = tardigradeMaterial.GetMaterialSetByType(type);
        GetComponent<Renderer>().material = materialSetSO.material;
        abilityPrefab = materialSetSO.activeAbilityEffect;
    }

    public virtual void PrimaryAbility()
    {
        //Use Elemental Ability
    }

    public TardigradeBase ConvertTardigrade(Elem element)
    {

        if(element == type)
        {
            return null;
        }
        TardigradeBase tardigradeBase = null;
        switch (element)
        {
            case Elem.Fire:
                tardigradeBase = gameObject.AddComponent<FireTardigrade>();
                break;
            case Elem.Water:
                tardigradeBase = gameObject.AddComponent<WaterTardigrade>();
                break;
            case Elem.Stone:
                tardigradeBase = gameObject.AddComponent<StoneTardigrade>();
                break;
            case Elem.Neutral:
                tardigradeBase = gameObject.AddComponent <NeutralTardigrade>();
                break;
            default:
                break;

        }
        tardigradeBase.health = health;
        tardigradeBase.type = element;
        tardigradeBase.tardigradeMaterial = tardigradeMaterial;
        tardigradeBase.UpdateAppearance();

        return tardigradeBase;

    }
}
