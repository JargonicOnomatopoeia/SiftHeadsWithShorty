stop();
aa = random(4) + 1;
onEnterFrame = function()
{
   if(aa == 0 && _currentframe == 2)
   {
      gotoAndPlay(2);
   }
   if(aa != 0)
   {
      aa = aa - 1;
   }
};
