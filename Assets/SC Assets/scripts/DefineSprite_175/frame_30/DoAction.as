_root.gomenu = 6;
stop();
onEnterFrame = function()
{
   if(_root.gomenu == 9)
   {
      _root.gomenu = 1;
      gotoAndPlay(31);
   }
};
