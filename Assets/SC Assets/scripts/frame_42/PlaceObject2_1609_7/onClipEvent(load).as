onClipEvent(load){
   startDrag(this,1);
   if(_root.wp == 1)
   {
      _root.stability = _root.st_1_1;
   }
   if(_root.wp == 2)
   {
      _root.stability = _root.st_1_2;
   }
   if(_root.wp == 3)
   {
      _root.stability = _root.st_1_3;
   }
   if(_root.wp == 4)
   {
      _root.stability = _root.st_1_4;
   }
   if(_root.stability == 1)
   {
      gotoAndPlay(42);
   }
   if(_root.stability == 2)
   {
      gotoAndPlay(242);
   }
   if(_root.stability == 3)
   {
      gotoAndPlay(442);
   }
}
