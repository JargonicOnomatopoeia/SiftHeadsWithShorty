using UnityEngine;
using UnityEngine.UI;
public class titlescreen : MonoBehaviour
{
    [SerializeField] private Text levelTitle;

    private void OnEnable(){
        levelTitle.text = level_controller.lc.getCurrentLevel().levelName;
    }

    private void disableThis(){
        gameObject.SetActive(false);
        level_controller.lc.startSpawn = true;
        level_controller.lc.delaySpawn = Time.time;
    }
}
