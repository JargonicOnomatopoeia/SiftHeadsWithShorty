onClipEvent(enterFrame){
   if(stade == 2)
   {
      stade = 1;
      if(_root.lvl_act == 6)
      {
         _root.boxx.boxx2.en_5.boxx.gotoAndPlay(159);
         _root.boxx.boxx2.en_6.boxx.gotoAndPlay(159);
         _root.boxx.boxx2.en_7.boxx.gotoAndPlay(159);
         _root.boxx.boxx2.en_8.boxx.gotoAndPlay(159);
         _root.boxx.boxx2.en_9.boxx.gotoAndPlay(159);
      }
      if(_root.lvl_act == 11)
      {
         _root.v_move2 = 8;
      }
   }
}
