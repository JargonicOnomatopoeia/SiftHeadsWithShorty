using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class enemy_player_run : enemy_player
{
    private bool duck;
    private bool activateOnce;
    [SerializeField] private GameObject foreHeadShot2;
    [SerializeField] private GameObject headShotBlood2;
    [SerializeField] private GameObject bloodFloor2;
    [SerializeField] private Transform headShotPos2;
    [SerializeField] private Transform bloodFloorPos2;

    protected override void Awake()
    {
        base.Awake();
        activateOnce = false;
        duck = false;
    }

    protected override void Move()
    {
        if(canAct){
            if(status.actionTransitionTime[selectTT] > Time.time - currentTime){
                transform.Translate(Vector2.left * status.speed * Time.deltaTime, Space.World);
            }else if(!duck){
                thisAnim.Play("EnemyDuck", 0);
                transform.Translate(Vector2.left * (status.speed/2) * Time.deltaTime, Space.World);
            }
            if(attackStart < Time.time - currentTime && !activateOnce){
                    activateOnce = true;
                    thisAnim.Play("EnemyAim", 1);
            }
        }
    }

    public override void HeadShot()
    {
        if(duck){
            foreHeadShot2.SetActive(true);
            Instantiate(headShotBlood2, headShotPos2.position, Quaternion.identity);
            Instantiate(bloodFloor2, bloodFloorPos2.position, Quaternion.identity);
        }else{
            foreHeadShot.SetActive(true);
            Instantiate(headShotBlood, headShotPos.position, Quaternion.identity);
        }
        Kill();
    }

    protected override void Kill()
    {
        string isDuck = string.Empty;
        canAct = false;
        if(duck){
            isDuck = "Duck";
        }
        thisAnim.Play("EnemyWeaponDrop"+isDuck, 1);
        thisAnim.Play("EnemyDeath"+isDuck, 0);
    }

    private void ChangeToDuck(){
        duck = true;
    }
}
