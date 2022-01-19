aa = 250;
ab = _currentframe;
stop();
onEnterFrame = function()
{
   if(aa == 0 && _currentframe == ab)
   {
      play();
   }
   if(aa != 0)
   {
      aa = aa - 1;
   }
};
