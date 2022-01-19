if(aa == 1)
{
   gotoAndPlay(3);
}
if(aa == 2)
{
   gotoAndPlay(57);
}
if(aa == 3)
{
   gotoAndPlay(127);
}
onEnterFrame = function()
{
   if(lecorp.idie == 2)
   {
      lecorp.idie = 1;
      stop();
   }
};
