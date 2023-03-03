using UnityEngine;

[CreateAssetMenu(fileName = "SquadManageData", menuName = "ScriptableObjects/SquadManage/SquadData", order = 0)]
//Made By Parker Bennion
public class SO_SquadData : ScriptableObject
{
    public Vector3 vectorThree;
    public int squadNumber;

    //resets the squad number
    private void Awake()
    {
        squadNumber = 0;
    }

    //changes which squad to control and caps at 10 (see squad brain for more details)
    public void addSquadNumber()
    {
        if (squadNumber < 10 )
        {
            squadNumber++;
        }
    }
    
    //changes to previous squad caps at 0;
    public void SubtractSquadNumber()
    {
        if (squadNumber > 0)
        {
            squadNumber--;
        }
    }

    //sets the squad number in case you want to switch squads.
    public void SetSquadNumber(int thisNumber)
    {
        squadNumber = thisNumber;
    }
}
