stop();
onEnterFrame = function()
{
   if(_root.gatesareopened == 3)
   {
      _root.gatesareopened = 2;
      gotoAndPlay(2);
   }
};
