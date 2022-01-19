on(release){
   if(_root.stat_capacity != 20)
   {
      _root.stat_capacity = _root.stat_capacity + 1;
      _root.ptsgive = _root.ptsgive - 1;
      _root.bulletspermag2 = _root.bulletspermag2 + 1;
   }
}
