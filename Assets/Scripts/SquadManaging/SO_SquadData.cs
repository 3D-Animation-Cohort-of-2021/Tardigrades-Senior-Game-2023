using UnityEngine;
[CreateAssetMenu]
public class SO_SquadData : ScriptableObject
{
    public Vector3 vectorThree;
    public int squadNumber;

    private void Awake()
    {
        squadNumber = 0;
    }

    public void addSquadNumber()
    {
        if (squadNumber < 10 )
        {
            squadNumber++;
        }
    }
    public void SubtractSquadNumber()
    {
        if (squadNumber > 0)
        {
            squadNumber--;
        }
    }

    public void SetSquadNumber(int thisNumber)
    {
        squadNumber = thisNumber;
    }
}
