stop();
onEnterFrame = function()
{
   if(_root.enemiesstarter == 2)
   {
      _root.enemiesstarter = 1;
      gotoAndPlay(2);
   }
};
