stop();
onEnterFrame = function()
{
   if(_root.avanceintro == 2)
   {
      _root.avanceintro = 1;
      gotoAndPlay(20);
   }
};
