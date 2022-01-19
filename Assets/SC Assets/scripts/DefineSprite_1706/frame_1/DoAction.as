stop();
onEnterFrame = function()
{
   if(_root.fondu == 2)
   {
      _root.fondu = 1;
      gotoAndPlay(2);
   }
   if(_root.fondu == 3)
   {
      _root.fondu = 1;
      gotoAndPlay(140);
   }
};
