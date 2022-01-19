using UnityEngine;

public class laser : MonoBehaviour
{
    public Transform lazerPoint;
    public LineRenderer lineRenderer;
    public float defDistanceLazer;

    private void Awake() {
        lineRenderer.enabled = false;
    }

    private void Update() {
        if(Input.GetButtonDown("Laser Sight") && game_controller.gc.isLazerNotEmpty()){
            game_controller.gc.lazerEn = !game_controller.gc.lazerEn;
            if(!game_controller.gc.lazerEn){
                game_controller.gc.chargeDelayReset();
            }
        }
        if(game_controller.gc.lazerEn){
            laserSight();
        }
        lineRenderer.enabled = game_controller.gc.lazerEn;
    }

    private void laserSight(){
        RaycastHit2D hit = Physics2D.Raycast(lazerPoint.position, lazerPoint.right);
        if(hit && (hit.transform.CompareTag("Enemy")|| hit.transform.CompareTag("EnemyRun") 
            || hit.transform.CompareTag("EnemyBody") || hit.transform.CompareTag("EnemyBodyRun"))){
            DrawLine(hit.point);
        }else{
            DrawLine(lazerPoint.position + (lazerPoint.right * defDistanceLazer));
        }
    }

    private void DrawLine(Vector2 endPos){
        lineRenderer.SetPosition(0, lazerPoint.transform.position);
        lineRenderer.SetPosition(1, endPos);
    }

    private void OnDrawGizmos() {
        Gizmos.color = Color.blue;
        Gizmos.DrawLine(lazerPoint.position, lazerPoint.position + (lazerPoint.right * defDistanceLazer));
    }

}
