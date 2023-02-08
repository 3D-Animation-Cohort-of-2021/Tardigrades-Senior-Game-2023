using UnityEngine;

public class TardigradeBase : MonoBehaviour
{
    [SerializeField]protected float health = 5;
    protected float speed;
    protected float weaknessMultiplier = 0.5f; 
    [SerializeField]protected Elem type = Elem.Neutral;

    /// <summary>
    /// Purpose: Calculates type based damage and subtracts it from health
    /// </summary>
    /// <param name="other">The Element component of the triggering object</param>
    protected void TakeDamage(Element other)
    {
        float bonusDamage = other.IsWeak(type) * weaknessMultiplier * other.GetDamage();
        health -= (other.GetDamage() + bonusDamage);
        
        print("Damage Taken: "+ (other.GetDamage() + bonusDamage));
    }
    public new string GetType()
    {
        return type.ToString();
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.GetComponent<Element>())
        {
            //print(other.GetComponent<Element>().GetType());
            TakeDamage(other.GetComponent<Element>());
        }
    }
    
}
