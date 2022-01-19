aa = 2;
stop();
onEnterFrame = function()
{
   if(aa == 0)
   {
      aa = 2;
      gotoAndStop(_currentframe + 1);
   }
   else
   {
      aa = aa - 1;
   }
};
