using UnityEngine;

public class enemy_player : MonoBehaviour
{
    [SerializeField]protected enemy status;
    [SerializeField] protected bool canAttackMove;
    protected int health;
    protected Animator thisAnim;
    protected int selectTT;
    protected float attackStart;
    protected float currentTime;
    protected bool canAct;
    [SerializeField] protected Transform gunpoint;
    [SerializeField] protected GameObject foreHeadShot;
    [SerializeField] protected GameObject headShotBlood;
    [SerializeField] protected GameObject floorBlood;
    [SerializeField] protected Transform headShotPos;
    [SerializeField] protected Transform floorBloodPos;
    //[SerializeField] protected Transform bodyShotPos;

    protected virtual void Awake() {
        canAct = true;
        health = status.health;
        currentTime = Time.time;
        selectTT = status.chooseLength();
        attackStart = (canAttackMove)?status.actionTransitionTime[selectTT]/2:status.actionTransitionTime[selectTT];
        thisAnim = GetComponent<Animator>();
    }

    protected virtual void Update() {
        Move();
    }

    protected virtual void Move(){
        if(canAct){
            if(status.actionTransitionTime[selectTT] > Time.time - currentTime){
                transform.Translate(Vector2.left * status.speed * Time.deltaTime, Space.World);
                thisAnim.Play("EnemyMovement", 0);
            }else{
                thisAnim.Play("EnemyStand", 0);
            }

            if(attackStart< Time.time - currentTime){
                thisAnim.Play("EnemyShoot", 1);
            }else{
                thisAnim.Play("EnemyHold", 1);
            }
        }
    }

    protected virtual void DamagePlayer(){
        game_controller.gc.thisAudio.PlayOneShot(status.gunShotSound);
        Instantiate(status.gunShot,gunpoint.position, Quaternion.identity);
        status.DamageToPlayer();
    }

    public void DamageSelf(){
        if(health > 0){
            health--;
        }
        if(health <= 0){
            Kill();
        }
    }

    protected virtual void Kill(){
        canAct = false;
        thisAnim.Play("EnemyWeaponDrop", 1);
        thisAnim.Play("EnemyDeath", 0);
    }

    public virtual void HeadShot(){
        foreHeadShot.SetActive(true);
        Instantiate(headShotBlood, headShotPos.position, Quaternion.identity);
        Kill();
    }

    protected virtual void BloodOnFloor(){
        Instantiate(floorBlood, floorBloodPos.position, Quaternion.identity);
    }

    protected virtual void Destroy(){
        Destroy(gameObject);
    }
}
