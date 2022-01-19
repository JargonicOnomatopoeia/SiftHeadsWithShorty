using System.Collections;
using UnityEngine;

public class level_controller : MonoBehaviour
{
    [SerializeField] private level[] levels;
    private InstantiationData[] enemySet;
    [SerializeField] private SpriteRenderer backgroundDisplay;
    [SerializeField] private Transform spawnpoint;
    private int enemyTraverser;
    private int enemyDied;
    [HideInInspector] public bool startSpawn;
    public float delaySpawn;
    public GameObject nextLevelScreen;
    public GameObject youLoseScreen;
    public GameObject congratzScreen;
    [SerializeField] private float timeToInvoke;
    [SerializeField] private AudioClip transitionScreen;
    private AudioSource thisAudio;

    public static level_controller lc;
    private void Awake(){
        cursor_lock.CursorLock();
        lc = this;
        enemyDied = 0;
        startSpawn = false;
        thisAudio = GetComponent<AudioSource>();
        enemySet = levels[temp_save.levelTraverse].id;
        backgroundDisplay.sprite = levels[temp_save.levelTraverse].background;
        thisAudio.clip = levels[temp_save.levelTraverse].musicLoop;
        thisAudio.Play();
    }

    private void Update() {
        if(startSpawn){
            Instantiator();
        }
        loseChecker();
    }

    private void LateUpdate() {
        checkEnemyDied();
    }

    public level getCurrentLevel(){
        return levels[temp_save.levelTraverse];
    }

    private bool checkDelay(){
        return enemySet[enemyTraverser].delayToInstant < Time.time - delaySpawn;
    }

    public void Instantiator(){
        if(enemyTraverser < enemySet.Length && checkDelay()){
            Instantiate(enemySet[enemyTraverser++].enemy, spawnpoint.position, Quaternion.identity);
            delaySpawn = Time.time;
        }
    } 

    public void checkEnemyDied(){
        GameObject[] enemies = GameObject.FindGameObjectsWithTag("Enemy");
        if(enemies.Length <= 0 && enemyTraverser >= enemySet.Length && game_controller.gc.canShoot){
            game_controller.gc.canShoot = false;
            if(temp_save.levelTraverse+1 >= levels.Length){
                StartCoroutine(ScreenSetToActiveCoroutine(congratzScreen));
            }else{
                StartCoroutine(ScreenSetToActiveCoroutine(nextLevelScreen));
            }
        }
    }

    private void loseChecker(){
        if(game_controller.gc.ahealth <= 0){
            Debug.Log(game_controller.gc.ahealth);
            startSpawn = false;
            game_controller.gc.canShoot = false;
            GameObject[] enemies = GameObject.FindGameObjectsWithTag("Enemy");
            foreach (GameObject i in enemies)
            {
                Destroy(i);
            }
            ScreenSetToActive(youLoseScreen);
        }
    }

    private IEnumerator ScreenSetToActiveCoroutine(GameObject screen){
        yield return new WaitForSeconds(timeToInvoke);
        ScreenSetToActive(screen); 
    }

    private void ScreenSetToActive(GameObject screen){
        cursor_lock.CursorUnLock();
        game_controller.gc.thisAudio.clip = transitionScreen;
        game_controller.gc.thisAudio.Play();
        screen.SetActive(true);
    }


}
