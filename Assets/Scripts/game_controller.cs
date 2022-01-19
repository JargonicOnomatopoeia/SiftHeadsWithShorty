using UnityEngine;
using UnityEngine.UI;

public class game_controller : MonoBehaviour
{
    public float health;
    public float ahealth{get; private set;}
    public changeable_stats stats;
    private changeable_stats statsMax;
    private float currentLaser;
    private int currentAmmo;
    public float eConsume;
    public float eChargeDelay;
    private float startEChargeDelay;
    public float eCharge;
    [HideInInspector] public bool lazerEn;
    [HideInInspector] public bool canShoot;
    
    [SerializeField] private Image healthStatus;
    [SerializeField] private Image laserStatus;
    [SerializeField] private Animator healthAnim;
    [SerializeField] private Text ammoCounter;
    [SerializeField] private GameObject reloadScreen;
    [HideInInspector] public AudioSource thisAudio;
    private GameObject onScreenReload;
    [SerializeField] private Animator playerAnimation;
    
    public static game_controller gc;

    // Start is called before the first frame update
    private void Awake() {
        if(temp_save.stats == null){
            temp_save.stats = new changeable_stats();
        }
        gc = this;
        combineStats();
        thisAudio = GetComponent<AudioSource>();
        currentLaser = statsMax.laserSight;
        ahealth = health;
        lazerEn = false;
        canShoot = true;
        reloadAmmo();
    }

    // Update is called once per frame
    void Update()
    {
        if(lazerEn){
            consumeLazerE();
        }else{
            chargeLazerE();
        }
        chargeLazerEOnZero();
    }

    private void combineStats(){
        statsMax = new changeable_stats();
        statsMax.ammo = stats.ammo + temp_save.stats.ammo;
        statsMax.laserSight = stats.laserSight + temp_save.stats.laserSight;
        statsMax.damageResist = stats.damageResist * temp_save.stats.damageResist;
    }

    public void minusAmmo(){
        currentAmmo--;
        ammoCounter.text = currentAmmo.ToString();
    }

    public void reloadAmmo(){
        currentAmmo = statsMax.ammo;
        ammoCounter.text = currentAmmo.ToString();
    }
    public bool isAmmoNotEmpty(){
        return currentAmmo > 0;
    }

    public bool isAmmoNotFull(){
        return currentAmmo >= 0 && currentAmmo < statsMax.ammo;
    }

    public void consumeLazerE(){
        if(currentLaser > 0f){
            currentLaser -= eConsume * Time.deltaTime;
        }
        currentLaser = Mathf.Clamp(currentLaser, 0, statsMax.laserSight);
        LaserUpdate();
    }

    public bool isLazerNotEmpty(){
        return currentLaser > 0;
    }

    public void chargeDelayReset(){
        startEChargeDelay = Time.time;
    }

    private bool checkerChargeDelay(){
        return startEChargeDelay > 0 && (eChargeDelay > Time.time - startEChargeDelay); 
    }

    private void chargeLazerE(){
        if(currentLaser <  statsMax.laserSight && lazerEn == false && !checkerChargeDelay()){
            currentLaser += eCharge * Time.deltaTime;
        }
        currentLaser = Mathf.Clamp(currentLaser, 0, statsMax.laserSight);
        LaserUpdate();
    }

    public void chargeLazerEOnZero(){
        if(!isLazerNotEmpty() && !checkerChargeDelay()){
            lazerEn = false;
            chargeDelayReset();
        }
    }

    private float percentageConvert(float current, float max){
        return current/max;
    }

    private void SliderUpdate(Image temp, float percentage){
        temp.fillAmount = percentage;
    }

    private void LaserUpdate(){
        SliderUpdate(laserStatus, percentageConvert(currentLaser, statsMax.laserSight));
    }

    private void HealthUpdate(){
        SliderUpdate(healthStatus, percentageConvert(ahealth, health));
    }
    public void MinusHealth(float amount){
        playerAnimation.Play("PlayerHurt");
        ahealth -= amount * (1 - statsMax.damageResist);
        ahealth = Mathf.Clamp(ahealth, 0, health);
        HealthUpdate();
        healthAnim.Play("Update", 0);
    }

    public void InstaOnScreenReload(){
        if(onScreenReload == null){
            canShoot = false;
            onScreenReload = Instantiate(reloadScreen);
        }
    }

    public void ReloadAnimDone(){
        if(onScreenReload != null){
            reloadAmmo();
            canShoot = true;
            Destroy(onScreenReload);
        }
    }
}
