stop();
onEnterFrame = function()
{
   if(_root.got2go == 3)
   {
      _root.got2go = 1;
      gotoAndPlay(61);
   }
};
