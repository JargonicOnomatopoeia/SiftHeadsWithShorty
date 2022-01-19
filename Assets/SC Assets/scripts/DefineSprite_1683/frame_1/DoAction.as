stop();
onEnterFrame = function()
{
   if(_root.reload == 2)
   {
      _root.canshot = 1;
      _root.reload = 1;
      gotoAndPlay(2);
   }
   if(_root.reload == 3)
   {
      _root.reload = 1;
      gotoAndPlay(21);
   }
};
