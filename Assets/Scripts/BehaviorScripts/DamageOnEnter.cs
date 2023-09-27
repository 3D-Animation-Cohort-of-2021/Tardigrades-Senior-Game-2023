using UnityEngine;

public class DamageOnEnter : MonoBehaviour
{

    public float _damage;
    public Elem _damageType;
    public float _effectDuration;

    public LayerMask _mask;
    private void OnTriggerEnter(Collider other)
    {
        float newDmg = _damage;
        if (other.TryGetComponent<IDamageable>(out IDamageable otherObj) /*&& other.gameObject.layer == _mask*/ )
        {
            if(other.TryGetComponent<TardigradeBase>(out TardigradeBase tard))
            {
                if (tard.GetElementType() == _damageType)
                {
                    newDmg = 0;
                }
                else
                {
                    newDmg = _damage * 20f;
                }
                tard.SetStatus((Status)_damageType, _effectDuration);
            }
            otherObj.Damage(newDmg, _damageType);
        }
    }
}
