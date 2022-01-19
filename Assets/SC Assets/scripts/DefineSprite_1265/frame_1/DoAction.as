stop();
onEnterFrame = function()
{
   if(_root.gocarmission2 == 2)
   {
      _root.gocarmission2 = 1;
      gotoAndPlay(2);
   }
};
