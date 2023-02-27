using UnityEngine;

public abstract class TardigradeBase : MonoBehaviour
{
    [SerializeField]public float health = 5;
    protected float speed;
    protected float weaknessMultiplier = 0.5f;
    [SerializeField]protected Elem type;

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


}
