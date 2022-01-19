using UnityEngine;
using Unity.VectorGraphics;
using UnityEngine.UI;

public class status_controller : MonoBehaviour
{
    private int max = 19;
    private int min = 0;
    [SerializeField] private int maxPoints;
    private int currentPoints;
    private int currentMaxPoints;
    [SerializeField] private Sprite[] bar;
    [SerializeField] private SVGImage resistance;
    [SerializeField] private SVGImage laser;
    [SerializeField] private SVGImage ammo;
    [SerializeField] private Text pointDisplay;
    public static changeable_stats addStats{get; private set;}

    private void OnEnable() {
        game_controller.gc.canShoot = false;
        currentPoints += maxPoints;
        currentMaxPoints = currentPoints;
        addStats = temp_save.stats;
        changeImage(resistance, (int)temp_save.stats.damageResist);
        changeImage(laser, temp_save.stats.laserSight);
        changeImage(ammo, temp_save.stats.ammo);
        pointDisplayer();
    }

    private void pointDisplayer(){
        if(currentPoints == 1){
            pointDisplay.text = currentPoints+" point left";
        }else{
            pointDisplay.text = currentPoints+" points left";
        }
    }

    private void changeImage(SVGImage stat, int traverse){
        stat.sprite = bar[traverse];
    }

    public void addResist(){
        if(currentPoints > 0 && addStats.damageResist < max){
            addStats.damageResist  = Mathf.Clamp(++addStats.damageResist,min,max);
            changeImage(resistance, (int)addStats.damageResist);
            currentPoints--;
            pointDisplayer();
        }
        
    }

    public void minuResist(){
        if(currentPoints <  currentMaxPoints && addStats.damageResist  > min){
            addStats.damageResist  = Mathf.Clamp(--addStats.damageResist ,min,max);
            changeImage(resistance, (int)addStats.damageResist );
            currentPoints++;
            pointDisplayer();
        }
    }

    public void addLaser(){
        if(currentPoints > 0 && addStats.laserSight < max){
            addStats.laserSight= Mathf.Clamp(++addStats.laserSight, min, max);
            changeImage(laser, addStats.laserSight);
            currentPoints--;
            pointDisplayer();
        }
    }

    public void minusLaser(){
        if(currentPoints < currentMaxPoints && addStats.laserSight > min){
            addStats.laserSight = Mathf.Clamp(--addStats.laserSight, min, max);
            changeImage(laser, addStats.laserSight);
            currentPoints++;
            pointDisplayer();
        }
        
    }

    public void addAmmo(){
        if(currentPoints > 0 && addStats.ammo < max){
            addStats.ammo = Mathf.Clamp(++addStats.ammo, min, max);
            changeImage(ammo, addStats.ammo);
            currentPoints--;
            pointDisplayer();
        }
    }

    public void minusAmmo(){
        if(currentPoints < currentMaxPoints && addStats.ammo > 0){
            addStats.ammo = Mathf.Clamp(--addStats.ammo, min, max);
            changeImage(ammo, addStats.ammo);
            currentPoints++;
            pointDisplayer();
        }
        
    }
}
