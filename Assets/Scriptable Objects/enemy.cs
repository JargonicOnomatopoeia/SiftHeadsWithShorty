using UnityEngine;

[CreateAssetMenu(fileName="NewEnemy", menuName = "Sift With Shorty/Enemy")]
public class enemy : ScriptableObject
{
    public int health;
    public float damage;
    public float speed;
    public float[] actionTransitionTime;
    public AudioClip gunShotSound;
    public GameObject gunShot;

    public void DamageToPlayer(){
        game_controller.gc.MinusHealth(damage);
    }

    public int chooseLength(){
        return Random.Range(0, actionTransitionTime.Length);
    }
}
