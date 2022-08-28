using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RoomTransition : MonoBehaviour
{

    public Transform pointToGoTo;

    [SerializeField]
    private Fade fade;

    private bool initiated = false;
    private bool fadeBackIn = false;

    private UnityStandardAssets.Characters.ThirdPerson.ThirdPersonUserControl playerControls;

    private void Update()
    {
        if (initiated && !fade.fadeRunning)
        {
            playerControls.gameObject.transform.position = pointToGoTo.position;
            fade.DeFade();
            fadeBackIn = true;
            initiated = false;
        }
        else if (fadeBackIn && !fade.deFadeRunning)
        {
            playerControls.freeze = false;
            fadeBackIn = false;
        }
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.tag == "Player")
        {
            initiated = true;
            playerControls = other.gameObject.GetComponent<UnityStandardAssets.Characters.ThirdPerson.ThirdPersonUserControl>();
            playerControls.freeze = true;
            fade.StartFade();
            
            
        }
    }
}
