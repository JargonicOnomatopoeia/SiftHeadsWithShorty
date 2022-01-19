onClipEvent(enterFrame){
   if(act == 2)
   {
      act = 1;
      if(_root.cost > _root.cash)
      {
         _parent._parent.gotoAndPlay(91);
      }
      else
      {
         _parent._parent.gotoAndPlay(121);
      }
   }
}
