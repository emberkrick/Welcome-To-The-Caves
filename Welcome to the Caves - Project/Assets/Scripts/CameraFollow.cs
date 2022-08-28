using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraFollow : MonoBehaviour
{

    [SerializeField]
    private GameObject target;

    [SerializeField]
    private float cameraOffset = 10f;

    private Transform cameraTransform;
    private Transform targetTransform;

    private void Start()
    {
        cameraTransform = gameObject.transform;
        if (target != null)
        {
            targetTransform = target.transform;
        }
        else
        {
            targetTransform = gameObject.transform;
        }
    }

    private void Update()
    {
        cameraTransform.position = new Vector3(targetTransform.position.x, cameraTransform.position.y, targetTransform.position.z+cameraOffset);
    }
}
