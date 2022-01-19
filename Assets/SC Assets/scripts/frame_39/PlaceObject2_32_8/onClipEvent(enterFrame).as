onClipEvent(enterFrame){
   if(act == 2)
   {
      act = 1;
      if(_root.lvl != 8)
      {
         _parent.gotoAndStop(38);
      }
      else
      {
         _parent.gotoAndStop(41);
      }
   }
}
