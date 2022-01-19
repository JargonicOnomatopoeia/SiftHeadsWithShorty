stop();
onEnterFrame = function()
{
   if(_root.rocashot == 2)
   {
      _root.rocashot = 3;
      gotoAndPlay(2);
   }
};
