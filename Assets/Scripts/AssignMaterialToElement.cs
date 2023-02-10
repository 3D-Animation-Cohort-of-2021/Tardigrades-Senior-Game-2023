using System.Collections;
using System.Collections.Generic;
using UnityEngine;
[RequireComponent(typeof(MeshRenderer))]
public class AssignMaterialToElement : MonoBehaviour
{
    private Elem elementType;
    private MeshRenderer mRender;

    [SerializeField] private Material fireMat, waterMat, rockMat, neutralMat, unassignedMat;
    // Start is called before the first frame update
    void Start()
    {
        mRender = GetComponent<MeshRenderer>();
        if (GetComponent<Element>())
        {
            elementType = GetComponent<Element>().GetElementType();
        }
        else if (GetComponent<TardigradeBase>())
        {
            elementType = GetComponent<TardigradeBase>().GetElementType();
        }
        switch (elementType)
        {
            case Elem.Fire:
                mRender.material = fireMat;
                break;
            case Elem.Rock:
                mRender.material = rockMat;
                break;
            case Elem.Water:
                mRender.material = waterMat;
                break;
            case Elem.Neutral:
                mRender.material = neutralMat;
                break;
            default:
                mRender.material = unassignedMat;
                break;
        }
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
