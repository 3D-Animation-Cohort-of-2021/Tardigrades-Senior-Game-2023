using System;
using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
[RequireComponent(typeof(TextMeshProUGUI))]
public class TextBehavior : MonoBehaviour
{
    public TextMeshProUGUI message;

    private void Awake()
    {
        message = GetComponent<TextMeshProUGUI>();
    }

    public void SetMessage(string newMessage)
    {
        message.text = newMessage;
    }
}
