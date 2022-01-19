using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class cursor_lock : MonoBehaviour
{
    public static void CursorLock(){
        Cursor.lockState = CursorLockMode.Locked;
        Cursor.visible = false;
    }

    public static void CursorUnLock(){
        Cursor.lockState = CursorLockMode.None;
        Cursor.visible = true;
    }
}
