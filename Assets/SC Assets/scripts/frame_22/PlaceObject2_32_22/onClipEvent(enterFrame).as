onClipEvent(enterFrame){
   if(act == 2)
   {
      act = 1;
      if(_root.choixdarme == 2)
      {
         _root.choixdarme = 1;
         _root.wp_ch = _root.wp_chb;
      }
      if(_root.backbuttonchange == 2)
      {
         _root.backbuttonchange = 1;
         _root.gobackmenu = 2;
         _parent.euhmm.gotoAndPlay(61);
      }
      else
      {
         _parent.gotoAndStop(21);
      }
   }
}
