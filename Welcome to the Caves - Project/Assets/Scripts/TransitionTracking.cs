using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TransitionTracking : MonoBehaviour
{
    [SerializeField]
    private RoomTransition[] hallways;

    [SerializeField]
    private Transform[] deadends;

    [SerializeField]
    private Transform[] loopMapping;

    [SerializeField]
    private RoomTransition[] correctOrder;

    [SerializeField]
    private Transform finalSpawn;

    [SerializeField]
    private GameObject incorrect;

    [SerializeField]
    private AudioClip incorrectSound;

    [SerializeField]
    private AudioSource soundEffects;

    [SerializeField]
    private float incorrectTime = 1f;

    public int counter = -1;

    private void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.tag == "Player")
        {
            counter++;
            for( int i = 0; i < hallways.Length; i++)
            {
                if (hallways[i] == correctOrder[counter])
                {
                    if (counter == correctOrder.Length - 1)
                    {
                        hallways[i].pointToGoTo = finalSpawn;
                    }
                    else
                    {
                        hallways[i].pointToGoTo = loopMapping[i];
                    }
                }
                else
                {
                    hallways[i].pointToGoTo = deadends[i];
                }
            }
        }
    }

    public void checkValidity(RoomTransition hall)
    {
        if (hall != correctOrder[counter])
        {
            counter = -1;
            StartCoroutine(showIncorrect());
        }
    }

    public IEnumerator showIncorrect()
    {
        soundEffects.clip = incorrectSound;
        soundEffects.Play();
        for (int i = 0; i < 3; i++)
        {
            incorrect.SetActive(true);
            yield return new WaitForSeconds(incorrectTime/10);
            incorrect.SetActive(false);
            yield return new WaitForSeconds(incorrectTime / 10);
        }
        
    }
}
