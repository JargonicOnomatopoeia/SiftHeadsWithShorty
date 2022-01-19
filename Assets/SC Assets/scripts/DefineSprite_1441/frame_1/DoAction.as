stop();
onEnterFrame = function()
{
   if(_root.helienergyb != _root.helienergy)
   {
      _root.helienergyb = _root.helienergy;
      gotoAndPlay(2);
   }
};
