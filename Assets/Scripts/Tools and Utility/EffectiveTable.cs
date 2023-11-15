
public enum Elem
{
    Neutral,
    Fire,
    Water,
    Stone
}

public enum Effectiveness
{
    Effective = 0,
    Ineffective = 1,
    Reactive = 2,
    None = 3
}

public enum Status
{

    None,
    Burning,
    Wet,
    Muddy
}

public class EffectiveTable
{
    private static float[][] _damageMultiplierTable =
    {
        //                   neu   fir   wat   sto
        /*Neu*/ new float[] {1.0f, 1.5f, 1.5f, 1.5f},
        /*Fir*/ new float[] {1.0f, 1.0f, 1.5f, 0.5f},
        /*Wat*/ new float[] {1.0f, 0.5f, 1.0f, 1.5f},
        /*Sto*/ new float[] {1.0f, 1.5f, 0.5f, 1.0f},
    };

    private static Effectiveness[][] _effectivenessTable =
    {
        //                   neu   fir   wat   sto
        /*Neu*/ new Effectiveness[] {Effectiveness.None, Effectiveness.Effective, Effectiveness.Effective, Effectiveness.Effective},
        /*Fir*/ new Effectiveness[] {Effectiveness.None, Effectiveness.Effective, Effectiveness.Reactive, Effectiveness.Ineffective},
        /*Wat*/ new Effectiveness[] {Effectiveness.None, Effectiveness.Ineffective, Effectiveness.Effective, Effectiveness.Reactive},
        /*Sto*/ new Effectiveness[] {Effectiveness.None, Effectiveness.Reactive, Effectiveness.Ineffective, Effectiveness.Effective},
    };

    /// <summary>
    /// Purpose: Check if an element is weak to a specified element type
    /// </summary>
    /// <param name="type">an enum Elem</param>
    /// <param name="dmgType">an enum Elem</param>
    /// <returns>enum of whether element is weak to the specified element</returns>
    public static Effectiveness DetermineEffectiveness(Elem type, Elem dmgType)
    {
        int row = (int)type;
        int col = (int)dmgType;

        return _effectivenessTable[row][col];
    }

    /// <summary>
    /// Purpose: Calculates the effectiveness modifier
    /// </summary>
    /// /// <returns> The modifier for type taking damage from dmgType</returns>
    public static float CalculateEffectiveDMG(Elem type, Elem dmgType)
    {
        int row = (int)type;
        int col = (int)dmgType;

        return _damageMultiplierTable[row][col];
    }

    /// <summary>
    /// Purpose: Calculates the damage taken based on type effectiveness
    /// </summary>
    /// /// <returns>The calculated damage</returns>
    public static float CalculateEffectiveDMG(Elem type, Elem dmgType, float dmgNum)
    {
        float modifier = CalculateEffectiveDMG(type, dmgType);

        return modifier * dmgNum;
    }
}
