using System;
using System.Collections;
using System.Collections.Generic;
using Unity.VisualScripting;
using UnityEditor.Experimental.GraphView;
using UnityEngine;
using UnityEngine.AI;
using UnityEngine.InputSystem;
using UnityEngine.VFX;

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
    public bool controlsEnabled, mouseMoveGo;
    public GameActionBool mouseMoveCall;
    public GameObject pointTargetPrefab, pointTargetObj;
    public LayerMask groundLayer;




    private void Awake()
    {
        controlsEnabled = true;
        _hordeAgent = GetComponent<NavMeshAgent>();
        _hordeAgent.speed = 0;
        _cam = Camera.main;
        checkDestination = new NavMeshHit();
        mouseMoveGo = false;
        mouseMoveCall.raise += SetMouseMoveActive;
    }

    private void Start()
    {
        pointTargetObj = Instantiate(pointTargetPrefab, gameObject.transform.position, Quaternion.identity);
        if(pointTargetObj.TryGetComponent(out VisualEffect FX))
            FX.Stop();
    }

    public void Update()
    {
        if(!controlsEnabled)
            return;
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
        
        if(mouseMoveGo)
            MoveTargetToMouse();
    }


    private void MoveHoardMouse(InputAction.CallbackContext context)
    {
        {
            if (_cam == null)
            {
                _cam = Camera.main;
            }
            if(mouseMoveGo)
            {
                Vector2 centerScreen = _cam.WorldToScreenPoint(transform.position);
                Vector2 offsetFromCenter = context.ReadValue<Vector2>() - centerScreen;
                
                if (Mathf.Abs(offsetFromCenter.x) > 50 || Mathf.Abs(offsetFromCenter.y) > 50)
                {
                    Vector2 normalizedOffset = offsetFromCenter.normalized;

                    _leftStickMovement.x = normalizedOffset.x;
                    _leftStickMovement.z = normalizedOffset.y;
                }
                
            }
            else
            {
                _leftStickMovement.x = 0;
                _leftStickMovement.z = 0;
            }
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
/// <summary>
/// Reads the unity action from input and enables the player to move the horde with the mouse
/// </summary>
/// <param name="state"></param>
    public void SetMouseMoveActive(bool state)
    {
        mouseMoveGo = state;
        if (pointTargetObj.TryGetComponent(out VisualEffect FX))
        {
            if(mouseMoveGo)
            {
                FX.Reinit();
            }
            else
                FX.Stop();
        }
            
    }

    public void MoveTargetToMouse()
    {
        Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
        if (Physics.Raycast(ray, out RaycastHit hit, Mathf.Infinity, groundLayer))
        {
            // move the object to the point where the ray hit the ground
            Vector3 worldPos = hit.point;
            worldPos.y = gameObject.transform.position.y;
            pointTargetObj.transform.position = worldPos;
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
/// <summary>
/// Enable the player's controls after <timeToDelay> seconds
/// </summary>
/// <param name="timeToDelay"></delay time before controls are activated>
    public void EnableControlsAfterDelay(float timeToDelay)
    {
        StartCoroutine(SetEnableControls(timeToDelay, true));
    }

    public void DisableControls(float timeToDelay)
    {
        StartCoroutine(SetEnableControls(timeToDelay, false));
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

    IEnumerator SetEnableControls(float timeToEnable, bool state)
    {
        yield return new WaitForSeconds(timeToEnable);
        controlsEnabled = state;
    }

    private void OnDestroy()
    {
        mouseMoveCall.raise -= SetMouseMoveActive;
    }
}
