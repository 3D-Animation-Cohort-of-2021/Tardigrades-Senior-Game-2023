using UnityEngine;

public class FireTardigrade : TardigradeBase
{
    protected override void ReactToStrong()
    {
        base.ReactToStrong();
        Debug.Log("The fire tardigrade is too quick and hot for the stone trap");
    }

    protected override void ReactToWeak()
    {
        base.ReactToWeak();
        Debug.Log("The fire tardigrade is nearly put out by the water trap");
    }

    public override void PrimaryAbility()
    {
        Instantiate(abilityPrefab, transform.position, Quaternion.identity);
    }
}
