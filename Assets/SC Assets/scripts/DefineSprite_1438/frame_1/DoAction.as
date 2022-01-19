stop();
onEnterFrame = function()
{
   if(_root.gohelifire == 2)
   {
      _root.gohelifire = 1;
      gotoAndStop(2);
   }
   if(_root.gohelifire == 3)
   {
      _root.gohelifire = 1;
      gotoAndStop(1);
   }
};
