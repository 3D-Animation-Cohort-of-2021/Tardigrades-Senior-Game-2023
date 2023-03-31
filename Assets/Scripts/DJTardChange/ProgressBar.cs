using System;
using System.Collections;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.UI;

// Followed LlamAcademy tutorial https://www.youtube.com/watch?v=Qw8odLHv38Q
public class ProgressBar : MonoBehaviour
{
    [SerializeField] private Image progressImg;
    [SerializeField] private float fillSpeed = 1f;
    [SerializeField] private UnityEvent<float> ProgressEvent;
    [SerializeField] private UnityEvent FinishedEvent;
    [SerializeField] private Gradient colorGradient;
    private Coroutine animCoroutine;
    
    private void Start()
    {
        if (progressImg.type != Image.Type.Filled)
        {
            Debug.LogError($"{name}'s ProgressImg is not of type \"Filled\" Disabling this Progress Bar");
            this.enabled = false;
        }
    }

    public void SetProgress(float progress)
    {
        SetProgress(progress, fillSpeed);
    }

    public void SetProgress(float progress, float speed)
    {
        if (progress < 0 || progress > 1)
        {
            //Debug.LogWarning($"Progress must be between 0 and 1");
            progress = Mathf.Clamp01(progress);
            
        }

        if (progress != progressImg.fillAmount)
        {
            if (animCoroutine != null)
            {
                StopCoroutine(animCoroutine);
            }

            animCoroutine = StartCoroutine(AnimateProgress(progress, speed));
        }
    }

    private IEnumerator AnimateProgress(float progress, float speed)
    {
        float time = 0;
        float startProgress = progressImg.fillAmount;

        while (time < 1)
        {
            progressImg.fillAmount = Mathf.Lerp(startProgress, progress, time);
            time += Time.deltaTime * speed;
            progressImg.color = colorGradient.Evaluate(progressImg.fillAmount);
            
            ProgressEvent?.Invoke(progressImg.fillAmount);
            yield return null;
        }

        progressImg.fillAmount = progress;
        progressImg.color = colorGradient.Evaluate(progressImg.fillAmount);
        
        ProgressEvent?.Invoke(progress);
        FinishedEvent?.Invoke();
    }
}
