stop();
onEnterFrame = function()
{
   if(_root.boulenoelexplode == 2)
   {
      _root.boulenoelexplode = 1;
      gotoAndStop(2);
   }
};
