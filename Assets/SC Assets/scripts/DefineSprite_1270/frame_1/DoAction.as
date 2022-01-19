stop();
onEnterFrame = function()
{
   if(_root.gocarmission2 == 3)
   {
      _root.gocarmission2 = 1;
      gotoAndPlay(2);
   }
   if(_root.carexploded == 2)
   {
      _root.carexploded = 1;
      gotoAndPlay(42);
   }
};
