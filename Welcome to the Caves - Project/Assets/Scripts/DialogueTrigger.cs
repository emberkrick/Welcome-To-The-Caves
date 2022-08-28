using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DialogueTrigger : MonoBehaviour
{

    [SerializeField]
    private List<string> textToWrite;

    [SerializeField]
    private TextScroll scrollScript;

    [SerializeField]
    private GameObject interactText;

    [SerializeField]
    private UnityStandardAssets.Characters.ThirdPerson.ThirdPersonUserControl playerControls;

    private bool inTrigger = false;
    private bool inConversation = false;
    private int counter = 0;

    private void Update()
    {
        if (inTrigger && Input.GetKeyDown(KeyCode.E))
        {
            if (scrollScript.skipped)
            {
                scrollScript.skipped = false;
            }

            else if (!scrollScript.currentlyWriting)
            {
                if (!inConversation)
                {
                    counter = 0;
                    interactText.SetActive(false);
                    StartCoroutine(scrollScript.WriteText(textToWrite[counter]));
                    playerControls.freeze = true;
                    inConversation = true;
                }
                else
                {
                    if (counter >= textToWrite.Count - 1)
                    {
                        inConversation = false;
                        interactText.SetActive(true);
                        scrollScript.TurnOffText();
                        playerControls.freeze = false;
                    }

                    else
                    {
                        counter++;
                        StartCoroutine(scrollScript.WriteText(textToWrite[counter]));
                    }
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
}
