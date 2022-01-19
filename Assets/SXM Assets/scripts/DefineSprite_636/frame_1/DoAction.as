stop();
onEnterFrame = function()
{
   if(_root.bloodburst == 2)
   {
      _root.bldbru._x = _root.bloodburstx;
      _root.bldbru._y = _root.bloodbursty;
      _root.bloodburst = 1;
      gotoAndPlay(2);
   }
};
