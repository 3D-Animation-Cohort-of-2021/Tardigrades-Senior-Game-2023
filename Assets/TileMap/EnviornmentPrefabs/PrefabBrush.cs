using System.Collections;
using System.Collections.Generic;
using Unity.VisualScripting;
using UnityEditor;
using UnityEditor.Tilemaps;
using UnityEngine;

[CreateAssetMenu(fileName = "Prefab Brush", menuName = "Brushes/Prefab brush")]
[CustomGridBrush(false, true, false, "Prefab Brush")]
public class PrefabBrush : GameObjectBrush
{
    public override void Erase(GridLayout gridLayout, GameObject brushTarget, Vector3Int position)
    {
        if (brushTarget.layer == 31)
        {
            return;
        }

        Transform erased = GetObjectInCel(gridLayout, brushTarget.transform, new Vector3Int(position.x, position.y, 0));
        if (erased != null)
        {
            Undo.DestroyObjectImmediate(erased.gameObject);
        }
    }

    private static Transform GetObjectInCel(GridLayout grid, Transform parent, Vector3Int position)
    {
        int childCount = parent.childCount;
        Vector3 min = grid.LocalToWorld(grid.CellToLocalInterpolated(position));
        Vector3 max = grid.LocalToWorld(grid.CellToLocalInterpolated(position + Vector3Int.one));
        Bounds bounds = new Bounds((max + min) * 0.5f, max - min);

        for (int i = 0; i < childCount; i++)
        {
            Transform child = parent.GetChild(i);
            if (bounds.Contains(child.position))
                return child;
        }
        return null;
    }
    
}
