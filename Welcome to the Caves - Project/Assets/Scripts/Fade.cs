using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Fade : MonoBehaviour
{

    [SerializeField]
    private Image fade;

    [SerializeField]
    private Color colorToFadeTo;

    [SerializeField]
    [Min(0f)]
    public float fadeTime;

    [HideInInspector]
    public bool fadeRunning = false;

    [HideInInspector]
    public bool deFadeRunning = false;

    private float timer;
    private Color initialColor;

    private void Start()
    {
        timer = fadeTime;
        initialColor = fade.color;
    }

    private void Update()
    {
        if (fadeRunning)
        {
            if (timer > Time.deltaTime)
            {
                fade.color = Color.Lerp(fade.color, colorToFadeTo, Time.deltaTime / timer);
                timer -= Time.deltaTime;
            }
            else
            {
                fadeRunning = false;
                timer = fadeTime;
            }
        }
        else if (deFadeRunning)
        {
            if (timer > Time.deltaTime)
            {
                fade.color = Color.Lerp(fade.color, initialColor, Time.deltaTime / timer);
                timer -= Time.deltaTime;
            }
            else
            {
                deFadeRunning = false;
                timer = fadeTime;
            }
        }
    }

    public void StartFade()
    {
        fadeRunning = true;
    }

    public void DeFade()
    {
        deFadeRunning = true;
    }
}
