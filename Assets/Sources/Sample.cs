using System.Collections;
using Autotest;
using UnityEngine;

public class Sample : MonoBehaviour
{

    private bool m_waitingForAutotest;
    
    public int value { get; private set; }
    
    private void Start()
    {
        m_waitingForAutotest = true;
        
        Autotesting.RegisterOnRun(OnRun);
        Autotesting.Initialize();
        
        StartCoroutine(Process());
    }

    private void OnRun()
    {
        m_waitingForAutotest = false;
    }

    private IEnumerator Process()
    {
        Debug.Log("Waiting for autotest...");

        while (m_waitingForAutotest == true)
            yield return null;
        
        Debug.Log("Autotest started.");

        yield return new WaitForSeconds(2f);
        Autotesting.Event("barrier");

        value = 100;
        Autotesting.Event("value_updated");
    }
    
}
