stop();
onEnterFrame = function()
{
   if(_root.shot == 2)
   {
      _root.shot = 1;
      _root.canshot = 1;
      _root.ammo = _root.ammo - 1;
      _root.bullets_used = _root.bullets_used + 1;
      if(_root.wp == 1)
      {
         gotoAndPlay(2);
      }
      if(_root.wp == 2)
      {
         gotoAndPlay(61);
      }
      if(_root.wp == 3)
      {
         gotoAndPlay(120);
      }
   }
};
