stop();
onEnterFrame = function()
{
   if(_root.bullets == 0)
   {
      gotoAndStop(2);
   }
   if(_root.bullets != 0)
   {
      gotoAndStop(1);
   }
};
