using UnityEngine;

[CreateAssetMenu(fileName = "SquadManageData", menuName = "ScriptableObjects/SquadManage/SquadData", order = 0)]
//Made By Parker Bennion
public class SO_SquadData : ScriptableObject
{
    public Vector3 vectorThree;
    public int totalSquads = 0;
    public int squadNumber = 0;

    //resets the squad number
    private void Awake()
    {
        squadNumber = 0;
        totalSquads = 0;
    }

    public void SetSquadTotal(int newTotal)
    {
        totalSquads = newTotal;
    }

    public void IncrementSquadTotal()
    {
        totalSquads++;
    }

    public void DecrementSquadTotal()
    {
        totalSquads--;
    }

    //changes which squad to control and caps at 10 (see squad brain for more details)
    public void AddSquadNumber()
    {
        if (squadNumber >= totalSquads - 1)
        {
            squadNumber = 0;
        }
        else
            squadNumber++;
    }
    
    //changes to previous squad caps at 0;
    public void SubtractSquadNumber()
    {
        if (squadNumber == 0)
        {
            squadNumber = totalSquads - 1;
        }
        else 
            squadNumber--;
    }

    //sets the squad number in case you want to switch squads.
    public void SetSquadNumber(int thisNumber)
    {
        squadNumber = thisNumber;
    }
}
