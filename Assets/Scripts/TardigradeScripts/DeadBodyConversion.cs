using UnityEngine;

public class DeadBodyConversion : MonoBehaviour
{
    private SkinnedMeshRenderer skinnedRenderer;
    private MeshRenderer renderer;
    [SerializeField] private Material waterBurnable, stoneBurnable, fireBurnable;
    [SerializeField] private GameObject stoneGeo;

    public void ConvertBurningBody(Elem element)
    {
        skinnedRenderer = GetComponentInChildren<SkinnedMeshRenderer>();
        switch (element)
        {
            case Elem.Water:
                renderer.material = waterBurnable;
                break;
            case Elem.Fire:
                renderer.material = fireBurnable;
                break;
            case Elem.Stone:
                renderer.material = stoneBurnable;
                stoneGeo.gameObject.SetActive(true);
                break;
        }
    }
    public void ConvertFreezingBody(Elem element)
    {
        renderer = GetComponentInChildren<MeshRenderer>();
        switch (element)
        {
            case Elem.Water:
                renderer.material = waterBurnable;
                break;
            case Elem.Fire:
                renderer.material = fireBurnable;
                break;
            case Elem.Stone:
                renderer.material = stoneBurnable;
                stoneGeo.gameObject.SetActive(true);
                break;
        }
    }
}
