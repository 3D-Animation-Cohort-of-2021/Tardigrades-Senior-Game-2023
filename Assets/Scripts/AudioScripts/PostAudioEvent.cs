using UnityEngine;

public class PostAudioEvent : MonoBehaviour
{
    public AK.Wwise.Event EventToPost;

    public void PostEvent()
    {
        EventToPost.Post(gameObject);
    }
}
