stop();
onEnterFrame = function()
{
   if(_root.got2go == 5)
   {
      _root.got2go = 1;
      gotoAndStop(27);
   }
};
