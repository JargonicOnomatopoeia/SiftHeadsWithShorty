using UnityEngine;

public class anim : MonoBehaviour
{
    private void DestroyThis(){
        Destroy(transform.root.gameObject);
    }

}
