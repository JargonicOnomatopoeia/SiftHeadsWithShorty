onClipEvent(enterFrame){
   if(stade == 2)
   {
      stade = 1;
      if(_root.lvl_act == 21 || _root.lvl_act == 29)
      {
         _root.stademur = 2;
      }
   }
}
