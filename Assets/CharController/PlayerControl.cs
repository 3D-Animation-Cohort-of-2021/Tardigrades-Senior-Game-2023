using System.Reflection;
using UnityEngine.InputSystem;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.AI;
using System.Collections;
//Made By Parker Bennion

public enum OffMeshLinkMoveMethod
{
    Teleport,
    NormalSpeed,
    Parabola
}

public class PlayerControl : MonoBehaviour
{
    public DebugInputSO debugInput;
    private NavMeshAgent navMeshAgent;
    private Vector3 leftStickMovement, triggerRotation, rightStickMovement;
    public SO_SquadData SquadsMoveCommands;
    public OffMeshLinkMoveMethod method = OffMeshLinkMoveMethod.Parabola;

    private Coroutine offMeshPathInstance = null;
    public UnityEvent squadChangeNext, squadChangePrevious, mutateEvent, primaryAbilityEvent;
    public UnityEvent<Formation> updateFormation;

    void Awake()
    {
        for (int i = 0; i < debugInput.map.actions.Count; i++)
        {
            debugInput.map.actions[i].started += InputReceived;
            debugInput.map.actions[i].performed += InputReceived;
            debugInput.map.actions[i].canceled += InputReceived;

            debugInput.map.actions[i].Enable();
        }

        SquadsMoveCommands.SetSquadNumber(0);
        SquadsMoveCommands.SetSquadTotal(0);
        navMeshAgent = GetComponent<NavMeshAgent>();
        
    }

    public void InputReceived(InputAction.CallbackContext context)
    {
        string tempFuncion;
        if (context.action.name != null)
        {
            tempFuncion = context.action.name;
            if (GetType().GetMethod(tempFuncion) != null)
            {
                MethodInfo method = GetType().GetMethod(tempFuncion);
                method.Invoke(this, new object[] { context });
            }
        }
    }

    IEnumerator TraverseOffMeshLink()
    {
        if (navMeshAgent.isOnOffMeshLink)
        {
            if (method == OffMeshLinkMoveMethod.NormalSpeed)
                yield return StartCoroutine(NormalSpeed());
            else if (method == OffMeshLinkMoveMethod.Parabola)
                yield return StartCoroutine(Parabola(0.5f));
            navMeshAgent.CompleteOffMeshLink();
        }
        yield return null;

        GetComponent<SquadManager>().TeleportSquadsToCenter(navMeshAgent.baseOffset);
        Coroutine temp = offMeshPathInstance;
        offMeshPathInstance = null;
        StopCoroutine(temp);
    }

    IEnumerator NormalSpeed()
    {
        OffMeshLinkData data = navMeshAgent.currentOffMeshLinkData;
        Vector3 endPos = data.endPos + Vector3.up * navMeshAgent.baseOffset;
        while (navMeshAgent.transform.position != endPos)
        {
            navMeshAgent.Move(Vector3.Lerp(transform.position, endPos, 10 * Time.deltaTime) - transform.position);
            yield return null;
        }
    }

    IEnumerator Parabola(float duration)
    {
        OffMeshLinkData data = navMeshAgent.currentOffMeshLinkData;
        Vector3 startPos = navMeshAgent.transform.position;
        Vector3 endPos = data.endPos + Vector3.up * navMeshAgent.baseOffset;
        float height = Vector3.Distance(startPos, endPos);
        float normalizedTime = 0.0f;
        while (normalizedTime < 1.0f)
        {
            float yOffset = height * 4.0f * (normalizedTime - normalizedTime * normalizedTime);
            navMeshAgent.Move((Vector3.Lerp(startPos, endPos, normalizedTime) + yOffset * Vector3.up) - transform.position);
            normalizedTime += Time.deltaTime / duration;
            yield return null;
        }
    }

    public void FixedUpdate()
    {
        Vector3 moveVector = leftStickMovement;

        //MoveHoard

        NavMeshHit checkDestination = new NavMeshHit();
        checkDestination.normal = Vector3.down;
        
        if(!navMeshAgent.isOnOffMeshLink)
        {

            if (NavMesh.SamplePosition(transform.position + moveVector, out checkDestination, 1f, NavMesh.AllAreas))
            {
                navMeshAgent.SetDestination(checkDestination.position);
            }
            else if (NavMesh.SamplePosition(transform.position + moveVector, out checkDestination, 10f, NavMesh.AllAreas))
            {
                navMeshAgent.SetDestination(checkDestination.position);
            }
            else
            {
                navMeshAgent.SetDestination(transform.position + moveVector);

            }

            navMeshAgent.Move(leftStickMovement * Time.deltaTime * 10);
        }
        else if(offMeshPathInstance == null)
        {
            offMeshPathInstance = StartCoroutine(TraverseOffMeshLink());
        }

        //MoveSquad

        //RotateSquad
        transform.Rotate(triggerRotation * (Time.deltaTime * 50));
    }


    public void CHANGEME(InputAction.CallbackContext context) //change change me to the exact name of the control added in the debug input scriptable object
    {
        if (context.started)
        {
            Debug.Log("Started" + "CHANGEME");
        }

        if (context.canceled)
        {
            Debug.Log("Canceled" + "CHANGEME");
        }

        if (context.performed)
        {
            Debug.Log("Performed" + "CHANGEME");
        }
    }

    public void MoveHoard(InputAction.CallbackContext context)
    {
        leftStickMovement.x = context.ReadValue<Vector2>().x;
        leftStickMovement.z = context.ReadValue<Vector2>().y;

    }
    public void PreviousSquad(InputAction.CallbackContext context)
    {
        if (context.started)
        {
            
            SquadsMoveCommands.SubtractSquadNumber();
        }

        if (context.canceled)
        {
            squadChangePrevious.Invoke();
        }

    }
    public void NextSquad(InputAction.CallbackContext context)
    {
        if (context.started)
        {
            
            SquadsMoveCommands.AddSquadNumber();
        }

        if (context.canceled)
        {
            squadChangeNext.Invoke();
        }
    }
    public void MoveSquad(InputAction.CallbackContext context)
    {
        rightStickMovement.x = context.ReadValue<Vector2>().x;
        rightStickMovement.z = context.ReadValue<Vector2>().y;

        SquadsMoveCommands.vectorThree = rightStickMovement;

    }
    public void RotateClockwise(InputAction.CallbackContext context)
    {
        if (context.performed)
        {
            triggerRotation.y = context.ReadValue<float>();
        }
        if (context.canceled)
        {
            triggerRotation.y = 0;
        }
    }
    public void RotateCounterClockwise(InputAction.CallbackContext context)
    {
        if (context.performed)
        {
            triggerRotation.y = context.ReadValue<float>()*-1;
        }
        if (context.canceled)
        {
            triggerRotation.y = 0;
        }
    }
    
    public void MutateSquad(InputAction.CallbackContext context)
    {
        if (context.started)
        {
            mutateEvent.Invoke();
        }
    }

    public void PrimaryAbility(InputAction.CallbackContext context)
    {
        if (context.started)
        {
            primaryAbilityEvent.Invoke();
        }
    }

    public void FormationOne(InputAction.CallbackContext context)
    {
        if (context.started)
        {
            updateFormation.Invoke(Formation.Cluster);
        }
    }

    public void FormationTwo(InputAction.CallbackContext context)
    {
        if (context.started)
        {
            updateFormation.Invoke(Formation.Line);
        }
    }

    public void FormationThree(InputAction.CallbackContext context)
    {
        if (context.started)
        {
            updateFormation.Invoke(Formation.Circle);
        }
    }

    public void FormationFour(InputAction.CallbackContext context)
    {
        if (context.started)
        {
            updateFormation.Invoke(Formation.Wedge);
        }
    }

}
