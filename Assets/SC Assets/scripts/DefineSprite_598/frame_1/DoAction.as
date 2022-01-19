if(_root.wp_ch == 1)
{
   _root.txta2 = "m21";
}
if(_root.wp_ch == 2)
{
   _root.txta2 = "dragunov sd";
}
if(_root.wp_ch == 3)
{
   _root.txta2 = "barrett m82";
}
if(_root.upgrade == 1)
{
   _root.txta3 = "stability";
}
if(_root.upgrade == 2)
{
   _root.txta3 = "capacity";
}
if(_root.upgrade == 3)
{
   _root.txta3 = "power";
}
if(_root.upgrade == 4)
{
   _root.txta3 = "zoom";
}
_root.txta1 = _root.txta2 + " | " + _root.txta3 + " upgrade";
if(_root.wp_ch == 1)
{
   if(_root.gobackmenu == 2)
   {
      _root.upgrade = 1;
   }
   if(_root.upgrade == 1)
   {
      if(_root.st_1_1 == 1)
      {
         _root.upgrade_value_1 = 2;
         _root.cost = "1000";
      }
      if(_root.st_1_1 == 2)
      {
         _root.upgrade_value_1 = 3;
         _root.cost = "1000";
      }
      if(_root.st_1_1 == 3)
      {
         if(_root.gobackmenu != 2)
         {
            _root.upgrade_completed = 2;
         }
      }
   }
   if(_root.gobackmenu == 2)
   {
      _root.upgrade = 2;
   }
   if(_root.upgrade == 2)
   {
      if(_root.st_2_1 == 5)
      {
         _root.upgrade_value_2 = 10;
         _root.cost = "1000";
      }
      if(_root.st_2_1 == 10)
      {
         _root.upgrade_value_2 = 12;
         _root.cost = "1000";
      }
      if(_root.st_2_1 == 12)
      {
         _root.upgrade_value_2 = 14;
         _root.cost = "1000";
      }
      if(_root.st_2_1 == 14)
      {
         if(_root.gobackmenu != 2)
         {
            _root.upgrade_completed = 2;
         }
      }
   }
   if(_root.gobackmenu == 2)
   {
      _root.upgrade = 3;
   }
   if(_root.upgrade == 3)
   {
      if(_root.st_3_1 == 3)
      {
         _root.upgrade_value_3 = 4;
         _root.cost = "1000";
      }
      if(_root.st_3_1 == 4)
      {
         _root.upgrade_value_3 = 5;
         _root.cost = "1000";
      }
      if(_root.st_3_1 == 5)
      {
         _root.upgrade_value_3 = 6;
         _root.cost = "1000";
      }
      if(_root.st_3_1 == 6)
      {
         if(_root.gobackmenu != 2)
         {
            _root.upgrade_completed = 2;
         }
      }
   }
   if(_root.gobackmenu == 2)
   {
      _root.upgrade = 4;
   }
   if(_root.upgrade == 4)
   {
      if(_root.st_4_1 == 2)
      {
         _root.upgrade_value_4 = 3;
         _root.cost = "1000";
      }
      if(_root.st_4_1 == 3)
      {
         _root.upgrade_value_4 = 4;
         _root.cost = "1000";
      }
      if(_root.st_4_1 == 4)
      {
         _root.upgrade_value_4 = 5;
         _root.cost = "1000";
      }
      if(_root.st_4_1 == 5)
      {
         if(_root.gobackmenu != 2)
         {
            _root.upgrade_completed = 2;
         }
      }
   }
}
if(_root.wp_ch == 2)
{
   if(_root.gobackmenu == 2)
   {
      _root.upgrade = 1;
   }
   if(_root.upgrade == 1)
   {
      if(_root.st_1_2 == 2)
      {
         _root.upgrade_value_1 = 3;
         _root.cost = "1000";
      }
      if(_root.st_1_2 == 3)
      {
         if(_root.gobackmenu != 2)
         {
            _root.upgrade_completed = 2;
         }
      }
   }
   if(_root.gobackmenu == 2)
   {
      _root.upgrade = 2;
   }
   if(_root.upgrade == 2)
   {
      if(_root.st_2_2 == 10)
      {
         _root.upgrade_value_2 = 12;
         _root.cost = "1000";
      }
      if(_root.st_2_2 == 12)
      {
         _root.upgrade_value_2 = 14;
         _root.cost = "1000";
      }
      if(_root.st_2_2 == 14)
      {
         _root.upgrade_value_2 = 16;
         _root.cost = "1000";
      }
      if(_root.st_2_2 == 16)
      {
         if(_root.gobackmenu != 2)
         {
            _root.upgrade_completed = 2;
         }
      }
   }
   if(_root.gobackmenu == 2)
   {
      _root.upgrade = 3;
   }
   if(_root.upgrade == 3)
   {
      if(_root.st_3_2 == 5)
      {
         _root.upgrade_value_3 = 6;
         _root.cost = "1000";
      }
      if(_root.st_3_2 == 6)
      {
         if(_root.gobackmenu != 2)
         {
            _root.upgrade_completed = 2;
         }
      }
   }
   if(_root.gobackmenu == 2)
   {
      _root.upgrade = 4;
   }
   if(_root.upgrade == 4)
   {
      if(_root.st_4_2 == 4)
      {
         _root.upgrade_value_4 = 5;
         _root.cost = "1000";
      }
      if(_root.st_4_2 == 5)
      {
         _root.upgrade_value_4 = 6;
         _root.cost = "1000";
      }
      if(_root.st_4_2 == 6)
      {
         _root.upgrade_value_4 = 7;
         _root.cost = "1000";
      }
      if(_root.st_4_2 == 7)
      {
         if(_root.gobackmenu != 2)
         {
            _root.upgrade_completed = 2;
         }
      }
   }
}
if(_root.wp_ch == 3)
{
   if(_root.gobackmenu == 2)
   {
      _root.upgrade = 1;
   }
   if(_root.upgrade == 1)
   {
      if(_root.st_1_3 == 1)
      {
         if(_root.gobackmenu != 2)
         {
            _root.upgrade_completed = 2;
         }
      }
   }
   if(_root.gobackmenu == 2)
   {
      _root.upgrade = 2;
   }
   if(_root.upgrade == 2)
   {
      if(_root.st_2_3 == 6)
      {
         _root.upgrade_value_2 = 8;
         _root.cost = "1000";
      }
      if(_root.st_2_3 == 8)
      {
         _root.upgrade_value_2 = 10;
         _root.cost = "1000";
      }
      if(_root.st_2_3 == 10)
      {
         _root.upgrade_value_2 = 12;
         _root.cost = "1000";
      }
      if(_root.st_2_3 == 12)
      {
         if(_root.gobackmenu != 2)
         {
            _root.upgrade_completed = 2;
         }
      }
   }
   if(_root.gobackmenu == 2)
   {
      _root.upgrade = 3;
   }
   if(_root.upgrade == 3)
   {
      if(_root.st_3_3 == 1)
      {
         _root.upgrade_value_3 = 2;
         _root.cost = "1000";
      }
      if(_root.st_3_3 == 2)
      {
         _root.upgrade_value_3 = 3;
         _root.cost = "1000";
      }
      if(_root.st_3_3 == 3)
      {
         _root.upgrade_value_3 = 4;
         _root.cost = "1000";
      }
      if(_root.st_3_3 == 4)
      {
         if(_root.gobackmenu != 2)
         {
            _root.upgrade_completed = 2;
         }
      }
   }
   if(_root.gobackmenu == 2)
   {
      _root.upgrade = 4;
   }
   if(_root.upgrade == 4)
   {
      if(_root.st_4_3 == 6)
      {
         _root.upgrade_value_4 = 7;
         _root.cost = "1000";
      }
      if(_root.st_4_3 == 7)
      {
         _root.upgrade_value_4 = 8;
         _root.cost = "1000";
      }
      if(_root.st_4_3 == 8)
      {
         _root.upgrade_value_4 = 9;
         _root.cost = "1000";
      }
      if(_root.st_4_3 == 9)
      {
         if(_root.gobackmenu != 2)
         {
            _root.upgrade_completed = 2;
         }
      }
   }
}
if(_root.gobackmenu == 2)
{
   _root.gobackmenu = 1;
   _parent.gotoAndPlay(31);
}
_root.costb = _root.cost + " $";
stop();
