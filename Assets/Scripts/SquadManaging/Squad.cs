using UnityEngine;

//Made By Parker Bennion

//this script is used as a template for lists for the squads to better track them.
//it will likely be added onto later to include for information
public class Squad
{
    public string SquadName { get; set; }
    public int SquadID { get; set; }
    public SquadBrain SquadObj { get; set; }

    public Elem GetSquadType()
    {
        return SquadObj.squadType;
    }
}
