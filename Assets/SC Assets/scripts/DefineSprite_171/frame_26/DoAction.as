_root.gomenu = 5;
stop();
onEnterFrame = function()
{
   if(_root.gomenu == 10)
   {
      _root.gomenu = 1;
      gotoAndPlay(27);
   }
};
