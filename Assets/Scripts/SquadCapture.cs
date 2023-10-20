using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(Collider))]
public class SquadCapture : MonoBehaviour
{
    private void OnTriggerEnter(Collider other)
    {
        SquadBrain brain;
        SquadManager manager;
        if(other.CompareTag("SQUAD") && transform.parent != null)
        {
            if (transform.parent.gameObject.TryGetComponent<SquadManager>(out manager))
            {
                manager.ReceiveSquad(other);
            }
            else if(transform.parent.gameObject.TryGetComponent<SquadBrain>(out brain))
            {
                brain.RecieveSquad(other);
            }
        }
    }
}
