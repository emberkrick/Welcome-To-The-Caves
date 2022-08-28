using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FlameFlicker : MonoBehaviour
{
    [SerializeField] [Range(0.0f, 1.0f)]
    private float flickerRarity = 0.9f;

    [SerializeField] [Min(0.0f)]
    private float flickerIntensity = 1f;

    [SerializeField] [Min(0.0f)]
    private float flickerTimer = 0.2f;

    [SerializeField]
    private int flickerSteps = 5;

    private Light spotLight;
    private float baseIntensity;
    private float timeSinceLastCall = 0.0f;

    private void Start()
    {
        spotLight = GetComponent<Light>();
        if (spotLight != null)
        {
            baseIntensity = spotLight.intensity;
        }
    }

    private void Update()
    {
        if (spotLight == null)
        {
            return;
        }

        timeSinceLastCall += Time.deltaTime;

        if (Random.value < flickerRarity && timeSinceLastCall >= flickerTimer)
        {
            if (spotLight.intensity >= baseIntensity + (flickerIntensity*flickerSteps))
            {
                spotLight.intensity -= flickerIntensity;
            }
            else if (spotLight.intensity <= baseIntensity - (flickerIntensity*flickerSteps))
            {
                spotLight.intensity += flickerIntensity;
            }
            else
            {
                if (Random.value > 0.5)
                {
                    spotLight.intensity += flickerIntensity;
                }
                else
                {
                    spotLight.intensity -= flickerIntensity;
                }
            }
            timeSinceLastCall = 0.0f;
        }
    }
}
