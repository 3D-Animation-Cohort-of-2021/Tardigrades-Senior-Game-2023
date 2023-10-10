using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;
using UnityEngine.InputSystem;
//Created by: Marshall Krueger 10/4/23
//Purpose: This script manages horde movement

[RequireComponent(typeof(NavMeshAgent))]
public class HordeMovement : MonoBehaviour
{

    NavMeshAgent _hordeAgent;
    NavMeshHit checkDestination;
    public float _hordeSpeed = 5;
    public OffMeshLinkMoveMethod _leapMethod = OffMeshLinkMoveMethod.Parabola;
    private Coroutine offMeshPathInstance = null;
    private Camera _cam;
    private Vector3 _leftStickMovement, _triggerRotation;




    private void Awake()
    {
        _hordeAgent = GetComponent<NavMeshAgent>();
        _hordeAgent.speed = 0;
        _cam = Camera.main;
        checkDestination = new NavMeshHit();
    }


    public void FixedUpdate()
    {
        Vector3 moveVector = _leftStickMovement;

        //MoveHoard
        checkDestination.normal = Vector3.down;

        if (!_hordeAgent.isOnOffMeshLink)
        {

            if (NavMesh.SamplePosition(transform.position + moveVector, out checkDestination, 1f, NavMesh.AllAreas))
            {
                _hordeAgent.SetDestination(checkDestination.position);
            }
            else if (NavMesh.SamplePosition(transform.position + moveVector, out checkDestination, 10f, NavMesh.AllAreas))
            {
                _hordeAgent.SetDestination(checkDestination.position);
            }
            else
            {
                _hordeAgent.SetDestination(transform.position + moveVector);

            }

            _hordeAgent.Move(moveVector * Time.deltaTime * _hordeSpeed);
        }
        else if (offMeshPathInstance == null)
        {
            offMeshPathInstance = StartCoroutine(TraverseOffMeshLink());
        }

        //MoveSquad

        //RotateSquad
        transform.Rotate(_triggerRotation * (Time.deltaTime * 50));
    }


    private void MoveHoardMouse(InputAction.CallbackContext context)
    {
        if (_cam == null)
        {
            _cam = Camera.main;
        }

        Vector2 centerScreen = _cam.WorldToScreenPoint(transform.position);

        Vector2 offsetFromCenter = context.ReadValue<Vector2>() - centerScreen;

        if (Mathf.Abs(offsetFromCenter.x) > 50 || Mathf.Abs(offsetFromCenter.y) > 50)
        {
            Vector2 normalizedOffset = offsetFromCenter.normalized;

            _leftStickMovement.x = normalizedOffset.x;
            _leftStickMovement.z = normalizedOffset.y;
        }
        else
        {
            _leftStickMovement.x = 0;
            _leftStickMovement.z = 0;
        }
    }


    public void MoveHoard(InputAction.CallbackContext context)
    {
        if (context.control.parent.name == "Mouse")
        {
            MoveHoardMouse(context);
        }
        else
        {
            _leftStickMovement.x = context.ReadValue<Vector2>().x;
            _leftStickMovement.z = context.ReadValue<Vector2>().y;
        }
    }


    public void Rotate(InputAction.CallbackContext context)
    {
        if (context.performed)
        {
            _triggerRotation.y = context.ReadValue<float>();
        }
        if (context.canceled)
        {
            _triggerRotation.y = 0;
        }
    }


    IEnumerator TraverseOffMeshLink()
    {
        if (_hordeAgent.isOnOffMeshLink)
        {
            if (_leapMethod == OffMeshLinkMoveMethod.NormalSpeed)
                yield return StartCoroutine(NormalSpeed());
            else if (_leapMethod == OffMeshLinkMoveMethod.Parabola)
                yield return StartCoroutine(Parabola(0.5f));
            _hordeAgent.CompleteOffMeshLink();
        }
        yield return null;

        GetComponent<SquadManager>().TeleportSquadsToCenter(_hordeAgent.baseOffset);
        Coroutine temp = offMeshPathInstance;
        offMeshPathInstance = null;
        StopCoroutine(temp);
    }

    IEnumerator NormalSpeed()
    {
        OffMeshLinkData data = _hordeAgent.currentOffMeshLinkData;
        Vector3 endPos = data.endPos + Vector3.up * _hordeAgent.baseOffset;
        while (_hordeAgent.transform.position != endPos)
        {
            _hordeAgent.Move(Vector3.Lerp(transform.position, endPos, 10 * Time.deltaTime) - transform.position);
            yield return null;
        }
    }

    IEnumerator Parabola(float duration)
    {
        OffMeshLinkData data = _hordeAgent.currentOffMeshLinkData;
        Vector3 startPos = _hordeAgent.transform.position;
        Vector3 endPos = data.endPos + Vector3.up * _hordeAgent.baseOffset;
        float height = Vector3.Distance(startPos, endPos);
        float normalizedTime = 0.0f;
        while (normalizedTime < 1.0f)
        {
            float yOffset = height * 4.0f * (normalizedTime - normalizedTime * normalizedTime);
            _hordeAgent.Move((Vector3.Lerp(startPos, endPos, normalizedTime) + yOffset * Vector3.up) - transform.position);
            normalizedTime += Time.deltaTime / duration;
            yield return null;
        }
    }
}
