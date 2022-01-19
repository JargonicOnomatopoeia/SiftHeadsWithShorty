using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

[CreateAssetMenu(fileName="NewLevel", menuName = "Sift With Shorty/Level")]
public class level : ScriptableObject
{
    public string levelName;
    public Sprite background;
    public AudioClip musicLoop;
    public InstantiationData[] id;
}

[System.Serializable]
public class InstantiationData{
    public float delayToInstant;
    public GameObject enemy;
}
