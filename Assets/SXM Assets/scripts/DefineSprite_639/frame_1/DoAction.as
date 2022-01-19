stop();
onEnterFrame = function()
{
   if(_root.headshot == 2)
   {
      _root.hadsho._x = _root.bloodburstx;
      _root.hadsho._y = _root.bloodbursty;
      _root.headshot = 1;
      gotoAndPlay(2);
   }
};
