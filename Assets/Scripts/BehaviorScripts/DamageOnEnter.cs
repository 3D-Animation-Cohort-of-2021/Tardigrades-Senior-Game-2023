using UnityEngine;

public class DamageOnEnter : MonoBehaviour
{

    public float _damage;
    public LayerMask _mask;
    private void OnTriggerEnter(Collider other)
    {
        float newDmg = _damage;
        if (other.TryGetComponent<IDamageable>(out IDamageable otherObj))
        {
            if(other.TryGetComponent<TardigradeBase>(out TardigradeBase tard))
            {
                if (tard.GetElementType() == Elem.Fire)
                {
                    newDmg = 0;
                }
                else
                {
                    newDmg = _damage * 0.1f;
                }
            }
            otherObj.Damage(newDmg, Elem.Fire);
        }
    }
}
