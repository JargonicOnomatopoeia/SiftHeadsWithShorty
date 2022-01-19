if(_root.wp_ch == 1)
{
   if(_root.upgrade == 1)
   {
      _root.st_1_1 = _root.upgrade_value_1;
   }
   if(_root.upgrade == 2)
   {
      _root.st_2_1 = _root.upgrade_value_2;
   }
   if(_root.upgrade == 3)
   {
      _root.st_3_1 = _root.upgrade_value_3;
   }
   if(_root.upgrade == 4)
   {
      _root.st_4_1 = _root.upgrade_value_4;
   }
}
if(_root.wp_ch == 2)
{
   if(_root.upgrade == 1)
   {
      _root.st_1_2 = _root.upgrade_value_1;
   }
   if(_root.upgrade == 2)
   {
      _root.st_2_2 = _root.upgrade_value_2;
   }
   if(_root.upgrade == 3)
   {
      _root.st_3_2 = _root.upgrade_value_3;
   }
   if(_root.upgrade == 4)
   {
      _root.st_4_2 = _root.upgrade_value_4;
   }
}
if(_root.wp_ch == 3)
{
   if(_root.upgrade == 1)
   {
      _root.st_1_3 = _root.upgrade_value_1;
   }
   if(_root.upgrade == 2)
   {
      _root.st_2_3 = _root.upgrade_value_2;
   }
   if(_root.upgrade == 3)
   {
      _root.st_3_3 = _root.upgrade_value_3;
   }
   if(_root.upgrade == 4)
   {
      _root.st_4_3 = _root.upgrade_value_4;
   }
}
_root.gobackmenu = 2;
_root.cash = _root.cash - _root.cost;
_root.backbuttonchange = 2;
_parent.gotoAndStop(23);
