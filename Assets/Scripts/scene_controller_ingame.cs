using UnityEngine;
using UnityEngine.SceneManagement;

public class scene_controller_ingame : MonoBehaviour
{

    public void restartlevel(){
        SceneManager.LoadScene(SceneManager.GetActiveScene().name);
    }

    public void nextLevel(){
        temp_save.levelTraverse++;
        temp_save.stats = status_controller.addStats;
        SceneManager.LoadScene(SceneManager.GetActiveScene().name);
    }

    public void mainMenu(){
        temp_save.levelTraverse = 0;
        temp_save.stats.ammo = 0;
        temp_save.stats.damageResist = 0;
        temp_save.stats.laserSight = 0;
        SceneManager.LoadScene(0);
    }

    public void disableThisScreen(GameObject screen){
        screen.SetActive(false);
    }
}
