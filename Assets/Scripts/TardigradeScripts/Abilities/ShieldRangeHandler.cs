using System.Collections.Generic;
using UnityEngine;

public class ShieldRangeHandler : MonoBehaviour
{
    private WaterTardigrade _parentTard;
    private List<TardigradeBase> _tardList;
    private List<Obstacle> _obstacleList;

    private void Awake()
    {
        _parentTard = GetComponentInParent<WaterTardigrade>();

        if( _parentTard == null)
        {
            Destroy(gameObject);
        }

        _tardList = new List<TardigradeBase>();
        _obstacleList = new List<Obstacle>();
    }

    private void OnTriggerEnter(Collider other)
    {
         if(other.TryGetComponent<TardigradeBase>(out TardigradeBase newTard) && !_tardList.Contains(newTard))
         {
             _tardList.Add(newTard);
             newTard.OnDestroy += RemoveTard;
            UpdateTardigradeList();
         }
         else if(other.TryGetComponent<Obstacle>(out Obstacle newObstacle) && !_obstacleList.Contains(newObstacle))
         {
            _obstacleList.Add(newObstacle);
            newObstacle.OnDestroy += RemoveObstacle;
            UpdateObstacleList();
        }
    }

    private void OnTriggerExit(Collider other)
    {
        if(other.TryGetComponent<TardigradeBase>(out TardigradeBase newTard) && _tardList.Contains(newTard))
        {
            _tardList.Remove(newTard);
            newTard.OnDestroy -= RemoveTard;
            UpdateTardigradeList();
        }
        else if (other.TryGetComponent<Obstacle>(out Obstacle newObstacle) && _obstacleList.Contains(newObstacle))
        {
            _obstacleList.Remove(newObstacle);
            newObstacle.OnDestroy -= RemoveObstacle;
            UpdateObstacleList();
        }
    }

    public void RemoveObstacle(Obstacle obstacleToRemove)
    {
        _obstacleList.Remove(obstacleToRemove);

    }
    
    public void RemoveTard(TardigradeBase newTard)
    {
        _tardList.Remove(newTard);
        UpdateTardigradeList();
    }

    protected void UpdateObstacleList()
    {
        _parentTard._inRangeObstacles = _obstacleList;
    }

    protected void UpdateTardigradeList()
    {
        _parentTard._shieldableTards = _tardList;
    }
    
}
