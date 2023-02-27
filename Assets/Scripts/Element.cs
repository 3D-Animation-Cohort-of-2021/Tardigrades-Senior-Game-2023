using UnityEngine;

public class Element : MonoBehaviour
{
    [SerializeField]protected Elem type;
    [SerializeField]protected float damage; 
    [SerializeField]protected float interval;

    public string GetElementTypeString()
    {
        return type.ToString();
    }
    public Elem GetElementType()
    {
        return type;
    }
    public float GetDamage()
    {
        return damage;
    }
    
    /// <summary>
    /// Purpose: Check if specified element type is weak to object's type
    /// </summary>
    /// <param name="other">an enum element type</param>
    /// <returns>1 if other is weak to the object's element, -1 if strong, and 0 if neutral</returns>
    public int IsWeak(Elem other)
    {
        switch (other)
        {
            case Elem.Neutral:
                return -1;
            case Elem.Fire when type == Elem.Water:
                return 1;
            case Elem.Fire when type == Elem.Stone:
                return -1;
            case Elem.Fire:
                return 0;
            case Elem.Water when type == Elem.Stone:
                return 1;
            case Elem.Water when type == Elem.Fire:
                return -1;
            case Elem.Water:
                return 0;
            case Elem.Stone when type == Elem.Fire:
                return 1;
            case Elem.Stone when type == Elem.Water:
                return -1;
            case Elem.Stone:
                return 0;
            default:
                return 0;
        }
    }
}
