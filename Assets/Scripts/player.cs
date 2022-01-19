using UnityEngine;

public class player : MonoBehaviour
{
    [SerializeField] private float speedOfRotation;
    [SerializeField] private Transform frontPP;
    [SerializeField] private Transform backPP;
    private Vector3 origBackppPos;
    [SerializeField] private float offsetRotationA;
    [SerializeField] private float offsetRotationB;
    private float currentOffsetRotationA;
    [SerializeField] private float onShotOffsetRotationA;
    [SerializeField] private float speedReturnOrigOffset;
    [SerializeField] private float speedReturnOrigDelay;
    private float speedReturnOrigStart;
    private float speedReturnOrigIncreaser;
    [SerializeField] private Color innerRadc;
    [SerializeField] private Color outerRadc;
    [SerializeField] private float innerRadf;
    [SerializeField] private float outerRadf;
    [SerializeField] private float maxAim = 34.9f;
    [SerializeField] private float minAim = -43.1f;
    [SerializeField] private float speed;
    [SerializeField] private Transform gun;
    [SerializeField] private Transform gunPoint;
    [SerializeField] private GameObject gunShot;
    [SerializeField] private AudioClip gunShotSound;
    private Animator thisAnim;

    // Update is called once per frame
    private void Awake() {
        thisAnim = GetComponent<Animator>();
        currentOffsetRotationA = offsetRotationA;
        origBackppPos = backPP.position;
    }
    private void Update()
    {
        Rotate();
        BackArmAdjustment();
        Shoot();
        Reload();
        ReturnOffset();
    }

    private void Rotate(){
        
        Vector3 differenceb = gun.position - backPP.transform.position;
        //float rotZa = Mathf.Atan2(differencea.x, differencea.y) * Mathf.Rad2Deg;
        float rotZb = Mathf.Atan2(differenceb.x, differenceb.y) * Mathf.Rad2Deg;
        Vector3 frontRot = new Vector3(0f, 0f,frontPP.rotation.eulerAngles.z + Input.GetAxis("Mouse Y"));
        if(frontRot.z > 180f){
            frontRot.z -= 360f;
        }
        frontRot.z = Mathf.Clamp(frontRot.z, minAim, maxAim);
        frontPP.rotation = Quaternion.Lerp(frontPP.rotation,Quaternion.Euler(frontRot), speedOfRotation * Time.deltaTime);
        backPP.rotation = Quaternion.Euler(0f,0f, (rotZb + offsetRotationB)*-1);
    }

    private void BackArmAdjustment(){
        bool or = Physics2D.CircleCast(backPP.position, outerRadf, Vector2.zero);
        if(or){
            bool ir = Physics2D.CircleCast(backPP.position, innerRadf, Vector2.zero);
            if(ir){
                backPP.position = Vector2.MoveTowards(backPP.position, origBackppPos, speed * Time.deltaTime);
            }
        }else{
            backPP.position = Vector2.MoveTowards(backPP.position, gun.position, speed * Time.deltaTime);
        }
    }

    private void Shoot(){
        if(Input.GetMouseButtonDown(0) && game_controller.gc.canShoot && game_controller.gc.isAmmoNotEmpty()){
            game_controller.gc.thisAudio.PlayOneShot(gunShotSound);
            Instantiate(gunShot, gunPoint.transform.position, gunPoint.transform.rotation);
            RaycastHit2D enemy = Physics2D.Raycast(gunPoint.position, gunPoint.right);
            game_controller.gc.minusAmmo();
            if(enemy){
                enemy_player target = enemy.transform.root.GetComponent<enemy_player>();
                if(enemy.transform.CompareTag("Enemy") || enemy.transform.CompareTag("EnemyRun")){
                    target.HeadShot();
                }else{
                    target.DamageSelf();
                }
            }
            OffsetOnShoot();
            thisAnim.Play("PlayerShoot");
        }
    }

    private void Reload(){
        if(Input.GetMouseButtonDown(1) && game_controller.gc.isAmmoNotFull()){
            game_controller.gc.InstaOnScreenReload();
        }
        
    }

    private void OffsetOnShoot(){
        frontPP.Rotate(Vector3.forward * -onShotOffsetRotationA, Space.World);
        /*currentOffsetRotationA += onShotOffsetRotationA;
        speedReturnOrigStart = Time.time;
        speedReturnOrigIncreaser = 0;*/
    }

    private bool OffsetReturnDelayer(){
        return speedReturnOrigStart > 0 && speedReturnOrigDelay < Time.time - speedReturnOrigStart;
    }

    private void ReturnOffset(){
        if(currentOffsetRotationA < offsetRotationA && OffsetReturnDelayer()){
            speedReturnOrigIncreaser += speedReturnOrigOffset * Time.deltaTime;
            float change = currentOffsetRotationA + speedReturnOrigIncreaser;
            currentOffsetRotationA = Mathf.Clamp(change, -300f, offsetRotationA);
        }
        
    }

    private void OnDrawGizmos() {
        Gizmos.color = innerRadc;
        Gizmos.DrawWireSphere(backPP.position, innerRadf);
        Gizmos.color = outerRadc;
        Gizmos.DrawWireSphere(backPP.position, outerRadf);
    }

    /*private void OnMouseDown() {
        Instantiate(bullet, gunPoint.position, pivotPoints[0].transform.rotation);
    }*/
    
}
