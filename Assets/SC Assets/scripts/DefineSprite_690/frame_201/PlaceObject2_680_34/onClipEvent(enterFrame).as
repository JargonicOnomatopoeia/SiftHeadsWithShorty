onClipEvent(enterFrame){
   if(act == 2)
   {
      act = 1;
      getUrl("http://www.gamesfree.ca/", "_blank");
   }
   if(act == 3)
   {
      act = 1;
      _root.gogamename = boxx._currentframe;
      _root.gogamename2 = 2;
   }
}
