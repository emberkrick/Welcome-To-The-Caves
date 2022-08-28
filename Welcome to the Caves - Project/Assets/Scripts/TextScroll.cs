using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class TextScroll : MonoBehaviour
{

    [SerializeField]
    private Text text;

    [SerializeField]
    private GameObject dialogueBox;

    [SerializeField]
    private float waitTime = 0.1f;

    [HideInInspector]
    public bool currentlyWriting = false;

    [HideInInspector]
    public bool finished = false;

    [HideInInspector]
    public bool skipped = false;

    private PlayerInput playerScript;

    private void Awake()
    {
        GameObject player = GameObject.FindGameObjectWithTag("Player");
        if (player != null)
        {
            playerScript = player.GetComponent<PlayerInput>();
            if (playerScript == null)
            {
                Debug.LogError("Could not find PlayerInput script on Player");
            }
        }
        else
        {
            Debug.LogError("Could not find Player Game Object, make sure it is tagged as 'Player'");
        }
    }

    public IEnumerator WriteText(string write)
    {
        finished = false;
        currentlyWriting = true;
        skipped = false;
        dialogueBox.SetActive(true);
        text.text = "";
        yield return StartCoroutine(TextLoop(write));
    }

    public void TurnOffText()
    {
        dialogueBox.SetActive(false);
        finished = false;
    }

    private IEnumerator TextLoop(string write)
    {
        foreach (char c in write)
        {
            text.text += c;
            yield return new WaitForSeconds(waitTime);
            if (Input.GetKeyDown(KeyCode.E))
            {
                text.text = write;
                skipped = true;
                break;
            }
        }
        currentlyWriting = false;
        finished = true;
    }
}
