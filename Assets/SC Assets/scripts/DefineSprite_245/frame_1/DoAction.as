stop();
onEnterFrame = function()
{
   if(_root.gomenu == 6)
   {
      _root.gomenu = 1;
      gotoAndPlay(2);
   }
   if(_root.got2go == 44)
   {
      gotoAndStop(14);
      _root.gomenu2 = 2;
      _root.got2go = 1;
   }
};
