using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CustomTransform
{
    public Transform Parent { get; set; }
    public Vector3 Position {  get; set; }
    public Quaternion Rotation { get; set;}

    public Vector3 Scale { get; set;}

    public CustomTransform(Transform parent, Vector3 position, Quaternion quaternion, Vector3 scale) 
    {
        Parent = parent;
        Position = position;
        Rotation = quaternion;
        Scale = scale;
    }

    public CustomTransform(Vector3 position, Quaternion quaternion, Vector3 scale)
    {
        Parent = null;
        Position = position;
        Rotation = quaternion;
        Scale = scale;
    }
}
