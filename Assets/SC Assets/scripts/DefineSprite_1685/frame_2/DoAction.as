_root.canshot = 1;
onEnterFrame = function()
{
   if(_root.lvl_act == 3)
   {
      _root.lvl_act = 1;
      gotoAndPlay(551);
   }
   if(_root.boxx.boxx2.en_1.die == 2 && _root.boxx.boxx2.en_1.die == 2)
   {
      _root.boxx.boxx2.en_1.die = 1;
      _root.boxx.boxx2.en_2.die = 1;
      if(_currentframe == 552)
      {
         gotoAndPlay(553);
      }
   }
};
