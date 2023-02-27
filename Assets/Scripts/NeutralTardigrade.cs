using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NeutralTardigrade : TardigradeBase
{
    [SerializeField]private TardigradeBase firePrefab, waterPrefab, stonePrefab;
    void Start()
    {
        type = Elem.Neutral;
    }

    public void Mutate(Elem tardType)
    {
        print(tardType);
    }
    
}
