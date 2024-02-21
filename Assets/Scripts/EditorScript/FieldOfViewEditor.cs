#if (UNITY_EDITOR)
using UnityEngine;
using UnityEditor;

[CustomEditor(typeof(PlayerView))]
public class FieldOfViewEditor : Editor
{
    private void OnSceneGUI()
    {
        PlayerView pv = (PlayerView)target;
        Handles.color = Color.cyan;
        Handles.DrawWireArc(pv.transform.position, Vector3.up, Vector3.forward, 360, pv.viewRadus);
        
        Vector3 viewAngleA = pv.DirFromAngle(-pv.viewAngle / 2, false);
        Vector3 viewAngleB = pv.DirFromAngle(pv.viewAngle / 2, false);
        Handles.DrawLine(pv.transform.position, pv.transform.position + viewAngleA * pv.viewRadus);
        Handles.DrawLine(pv.transform.position, pv.transform.position + viewAngleB * pv.viewRadus);
    }
}
#endif