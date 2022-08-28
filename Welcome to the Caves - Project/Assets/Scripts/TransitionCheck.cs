using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TransitionCheck : MonoBehaviour
{
    [SerializeField]
    private TransitionTracking tracker;

    private void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.tag == "Player")
        {
            tracker.checkValidity(gameObject.GetComponent<RoomTransition>());
        }
    }
}
