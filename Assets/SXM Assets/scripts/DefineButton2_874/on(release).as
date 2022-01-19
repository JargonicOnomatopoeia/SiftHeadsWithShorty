on(release){
   if(_root.stat_resistance != 20)
   {
      _root.stat_resistance = _root.stat_resistance + 1;
      _root.ptsgive = _root.ptsgive - 1;
      _root.energy2 = _root.energy2 + 25;
   }
}
