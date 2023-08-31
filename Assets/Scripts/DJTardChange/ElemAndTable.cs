
public enum Elem
{
    Neutral,
    Fire,
    Water,
    Stone
}

public class EffectiveTable
{
    private static float[][] table =
    {
        //                   neu   fir   wat   sto
        /*Neu*/ new float[] {1.0f, 1.5f, 1.5f, 1.5f},
        /*Fir*/ new float[] {1.0f, 1.0f, 1.5f, 0.5f},
        /*Wat*/ new float[] {1.0f, 0.5f, 1.0f, 1.5f},
        /*Sto*/ new float[] {1.0f, 1.5f, 0.5f, 1.0f},
    };

    /// <summary>
    /// Purpose: Calculates the effectiveness modifier
    /// </summary>
    /// /// <returns> The modifier for type taking damage from dmgType</returns>
    public static float CalculateEffectiveDMG(Elem type, Elem dmgType)
    {
        int row = (int)type;
        int col = (int)dmgType;
        return table[row][col];
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
