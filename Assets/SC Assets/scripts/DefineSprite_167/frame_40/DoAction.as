_root.gomenu = 4;
stop();
onEnterFrame = function()
{
   if(_root.gomenu == 8)
   {
      _root.gomenu = 1;
      gotoAndPlay(41);
   }
};
