onClipEvent(enterFrame){
   if(lecorp2.lecorp.dead == 2)
   {
      lecorp2.lecorp.dead = 1;
      _root.envoy_2_1 = 1;
      _root.nbenplace = _root.nbenplace - 1;
      _root.nbenkill = _root.nbenkill + 1;
      _root.nbentype_2 = _root.nbentype_2 - 1;
      trace("hit");
   }
   dastate = _root.envoy_2_1;
}
