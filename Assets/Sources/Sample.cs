using System;
using System.Collections;
using Autotest;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class Sample : MonoBehaviour
{

    public int value { get; private set; }
    
    private void Start()
    {
        Autotesting.Initialize(Debug.Log, RestartApp, OnScriptError);
        
        StartCoroutine(Process());
    }

    private void RestartApp()
    {
        SceneManager.LoadScene(SceneManager.GetActiveScene().name);
    }

    private void OnScriptError(string name, Exception exception)
    {
        Debug.LogError($"[Error] {name} - {exception.Message}");
    }

    private IEnumerator Process()
    {
        Debug.Log("Starting...");

        Debug.Log("Waiting for 2s...");
        yield return new WaitForSeconds(2f);
        
        Debug.Log("Sending event 'barrier'...");
        Autotesting.Event("barrier");

        Debug.Log($"Changing Sample.instance.value from '{value}' to '100'...");
        value = 100;
        
        Debug.Log("Sending event 'value_updated'...");
        Autotesting.Event("value_updated");
    }

}
