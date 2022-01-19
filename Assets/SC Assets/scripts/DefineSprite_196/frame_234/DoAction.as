_root.gomenu = 2;
_root.introomenu = 1;
stop();
onEnterFrame = function()
{
   if(_root.gomenu == 7)
   {
      _root.gomenu = 1;
      gotoAndPlay(235);
   }
};
