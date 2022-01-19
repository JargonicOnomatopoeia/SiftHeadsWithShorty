onClipEvent(enterFrame){
   gotoAndStop(aa);
   if(_currentframe == st2)
   {
      stop();
   }
   if(aa < st2)
   {
      aa = aa + 3;
   }
   if(aa > st2)
   {
      aa = st2;
   }
}
