on(release){
   if(_root.stat_durability != 20)
   {
      _root.stat_durability = _root.stat_durability + 1;
      _root.ptsgive = _root.ptsgive - 1;
      _root.laserdurability2 = _root.laserdurability2 + 25;
   }
}
