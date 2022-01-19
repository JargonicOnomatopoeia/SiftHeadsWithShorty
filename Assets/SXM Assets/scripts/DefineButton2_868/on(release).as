on(release){
   if(_root.laversiondusponsor == 34)
   {
      if(_root.costume == 1)
      {
         _root.costume = 7;
      }
      else
      {
         _root.costume = _root.costume - 1;
      }
   }
   else if(_root.costume == 1)
   {
      _root.costume = 10;
   }
   else
   {
      _root.costume = _root.costume - 1;
   }
}
