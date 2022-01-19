stop();
onEnterFrame = function()
{
   if(_root.securitylock == 2)
   {
      _root.securitylock = 1;
      gotoAndPlay(301);
   }
};
