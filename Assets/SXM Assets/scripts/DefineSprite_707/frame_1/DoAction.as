stop();
onEnterFrame = function()
{
   if(_root.canshooot == -1 && _root.lvl == 1)
   {
      _root.canshooot = 2;
      gotoAndPlay(2);
   }
   if(_root.canshooot == 3)
   {
      _root.canshooot = 4;
      gotoAndPlay(31);
   }
   if(_root.canshooot == 5)
   {
      _root.canshooot = 6;
      gotoAndPlay(61);
   }
   if(_root.canshooot == 7)
   {
      _root.canshooot = 8;
      gotoAndPlay(91);
   }
   if(_root.canshooot == 9)
   {
      _root.canshooot = 10;
      gotoAndPlay(121);
   }
   if(_root.canshooot == 11)
   {
      _root.canshooot = 12;
      gotoAndPlay(151);
   }
   if(_root.canshooot == 12 && _root.bullets == 0)
   {
      _root.canshooot = 13;
      gotoAndPlay(181);
   }
   if(_root.canshooot == 14 && _root.lvl == 1)
   {
      _root.canshooot = 15;
      gotoAndPlay(211);
   }
};
