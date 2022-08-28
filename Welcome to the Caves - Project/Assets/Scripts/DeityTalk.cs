using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class DeityTalk : MonoBehaviour
{

    [SerializeField]
    private string[] textToWrite;

    [SerializeField]
    private TextScroll scrollScript;

    [SerializeField]
    private GameObject interactText;

    [SerializeField]
    private UnityStandardAssets.Characters.ThirdPerson.ThirdPersonUserControl playerControls;

    [SerializeField]
    private Animator dietyAnim;

    [SerializeField]
    private BoxCollider wingspan;

    [SerializeField]
    private int lineToTriggerAnim;

    [SerializeField]
    private Transform cinematicPlayerPosition;

    [SerializeField]
    private Transform cinematicCameraPosition;

    [SerializeField]
    private Transform titleScreenCameraPosition;

    [SerializeField]
    private GameObject endText;

    [SerializeField]
    private CameraFollow cameraScript;

    [SerializeField]
    private Fade fade;

    [SerializeField]
    private AudioSource music;

    [SerializeField]
    private AudioClip dietyAwaken;

    [SerializeField]
    private AudioClip wingFlap;

    [SerializeField]
    private AudioSource soundEffects;

    private Vector3 initialCameraPosition;
    private Quaternion initialCameraRotation;
    private bool inConversation = false;
    private bool initiateEnd = false;
    private bool fadeBackIn = false;
    private bool inTrigger = false;
    private int counter = 0;

    private void Update()
    {
        if (counter >= lineToTriggerAnim && !soundEffects.isPlaying && !initiateEnd && !fadeBackIn)
        {
            soundEffects.clip = wingFlap;
            soundEffects.loop = true;
            soundEffects.Play();
        }

        if (initiateEnd && !fade.fadeRunning)
        {
            cameraScript.gameObject.transform.position = titleScreenCameraPosition.position;
            cameraScript.gameObject.transform.rotation = titleScreenCameraPosition.rotation;
            fade.DeFade();
            scrollScript.TurnOffText();
            fadeBackIn = true;
            initiateEnd = false;
            endText.SetActive(true);
        }
        else if (fadeBackIn && !fade.deFadeRunning)
        {
            SceneManager.LoadScene("Title");
        }

        if (inTrigger && !initiateEnd && !fadeBackIn)
        {
            if (scrollScript.skipped && Input.GetKeyDown(KeyCode.E))
            {
                scrollScript.skipped = false;
            }
            else if (scrollScript.finished && Input.GetKeyDown(KeyCode.E) && !inConversation)
            {
                fade.StartFade();
                StartCoroutine(FadeOutMusic(music));
                StartCoroutine(FadeOutMusic(soundEffects));
                initiateEnd = true;
            }
            else if (!scrollScript.currentlyWriting && Input.GetKeyDown(KeyCode.E) && !inConversation && !initiateEnd)
            {
                counter = 0;
                interactText.SetActive(false);
                StartCoroutine(scrollScript.WriteText(textToWrite[counter]));
                inConversation = true;
                playerControls.freeze = true;
            }
            else if (!scrollScript.currentlyWriting && Input.GetKeyDown(KeyCode.E) && inConversation)
            {
                if (counter > textToWrite.Length - 2)
                {
                    inConversation = false;

                }
                else if (counter + 1 == lineToTriggerAnim)
                {
                    dietyAnim.SetBool("Awake", true);
                    soundEffects.clip = dietyAwaken;
                    soundEffects.Play();
                    wingspan.enabled = true;
                    playerControls.gameObject.transform.position = cinematicPlayerPosition.position;
                    cameraScript.enabled = false;
                    initialCameraPosition = cameraScript.gameObject.transform.position;
                    initialCameraRotation = cameraScript.gameObject.transform.rotation;
                    cameraScript.gameObject.transform.position = cinematicCameraPosition.position;
                    cameraScript.gameObject.transform.rotation = cinematicCameraPosition.rotation;
                    counter++;
                    StartCoroutine(scrollScript.WriteText(textToWrite[counter]));
                }
                else
                {
                    counter++;
                    StartCoroutine(scrollScript.WriteText(textToWrite[counter]));
                }

            }
        }
    }

    private void OnTriggerStay(Collider other)
    {
        if (other.gameObject.tag == "Player")
        {

            inTrigger = true;

        }
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.tag == "Player")
        {
            inTrigger = true;
            if (!scrollScript.currentlyWriting)
            {
                interactText.SetActive(true);
            }

        }
    }

    private void OnTriggerExit(Collider other)
    {
        if (other.gameObject.tag == "Player")
        {
            inTrigger = false;
            if (!scrollScript.currentlyWriting)
            {
                interactText.SetActive(false);
            }

        }
    }


    private IEnumerator FadeOutMusic(AudioSource audio)
    {
        while (audio.volume > 0.01f)
        {
            audio.volume -= Time.deltaTime / fade.fadeTime;
            yield return null;
        }

        audio.volume = 0;
        audio.Stop();
    }

}
