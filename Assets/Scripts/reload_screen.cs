using UnityEngine;

public class reload_screen : MonoBehaviour
{

    private Animation thisAnim;
    private AnimationState reloadAnim;
    private Vector2 lastMousePos;
    private bool calledOnce;
    [SerializeField] private GameObject magazine;
    [SerializeField] private float timeAddToAnimation;
    [SerializeField] private AudioClip reloadSound;

    private void Awake() {
        calledOnce = false;
        thisAnim = GetComponent<Animation>();
        reloadAnim = thisAnim["Reload"];
        reloadAnim.speed = 0;
    }
    

    // Update is called once per frame
    private void Update()
    {
        if(magazine.activeSelf){
            if(Input.GetMouseButton(0) && Input.GetAxis("Mouse Y") > 0){
                reloadAnim.time += timeAddToAnimation * reloadAnim.length;
            }
            if(Input.GetMouseButtonUp(0)){
                lastMousePos = Vector2.zero;
            }
        }else{
            reloadAnim.speed = 1;
            if(!calledOnce){
                calledOnce = true;
                game_controller.gc.thisAudio.PlayOneShot(reloadSound);
            }
            if(reloadAnim.normalizedTime == 0){
                game_controller.gc.ReloadAnimDone();
            }
        }
    }
}
