using UnityEngine;

public class DeadBodyConversion : MonoBehaviour
{
    private SkinnedMeshRenderer renderer;
    [SerializeField] private Material waterBurnable, stoneBurnable, fireBurnable;
    [SerializeField] private GameObject stoneGeo;

    public void Convert(Elem element)
    {
        renderer = GetComponentInChildren<SkinnedMeshRenderer>();
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
