onClipEvent(enterFrame){
   if(act == 2)
   {
      act = 1;
      if(_root.cash >= 4000)
      {
         _parent._parent._parent.gotoAndPlay(211);
      }
      else
      {
         _parent._parent._parent.gotoAndPlay(241);
      }
   }
   if(act == 3)
   {
      act = 1;
      _root.wp_ch = 3;
   }
}
