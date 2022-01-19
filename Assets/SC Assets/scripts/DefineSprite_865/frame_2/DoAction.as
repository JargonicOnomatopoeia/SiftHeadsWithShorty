stop();
onEnterFrame = function()
{
   if(_root.bloodgo == 2)
   {
      _root.bloodgo = 1;
      gotoAndPlay(1);
   }
};
