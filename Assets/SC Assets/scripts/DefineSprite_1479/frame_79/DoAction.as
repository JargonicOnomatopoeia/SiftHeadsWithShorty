onEnterFrame = function()
{
   if(_root.helienergy <= 0)
   {
      _root.helienergy = 100;
      gotoAndPlay(281);
   }
};
