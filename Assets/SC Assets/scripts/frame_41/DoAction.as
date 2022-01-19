stop();
onEnterFrame = function()
{
   if(_root.got2go == 2)
   {
      _root.got2go = 1;
      gotoAndStop(19);
   }
};
