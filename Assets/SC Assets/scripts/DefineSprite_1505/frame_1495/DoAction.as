aa = 150;
ab = _currentframe;
stop();
onEnterFrame = function()
{
   if(aa == 0 && _currentframe == ab)
   {
      _root.vinnieisdown = 2;
   }
   if(aa != 0)
   {
      aa = aa - 1;
   }
};
