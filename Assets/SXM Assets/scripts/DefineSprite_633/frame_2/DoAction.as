onEnterFrame = function()
{
   if(aa == _currentframe)
   {
      lecorp.hitzone.hited = 3;
      gotoAndStop(_currentframe + 1);
   }
   if(lecorp.idie == 2)
   {
      lecorp.idie = 1;
      stop();
   }
};
