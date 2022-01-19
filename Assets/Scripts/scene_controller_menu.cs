using UnityEngine;
using UnityEngine.SceneManagement;

public class scene_controller_menu : MonoBehaviour
{
    [SerializeField] private GameObject credits;
    [SerializeField] private GameObject menu;

    public void startGame(){
        SceneManager.LoadScene(1);
    }

    public void showCred(){
        menu.SetActive(false);
        credits.SetActive(true);
    }

    public void hideCred(){
        menu.SetActive(true);
        credits.SetActive(false);
    }

    public void openLink(string url){
        #if UNITY_WEBGL        	    
            Application.ExternalEval("window.open('"+url+"','_blank')");
        #endif
    }
}
