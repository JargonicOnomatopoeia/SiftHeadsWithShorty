stop();
if(_root.gofuckyourself == 2)
{
   gotoAndStop(2);
}
onEnterFrame = function()
{
   if(_root.got2go == 2)
   {
      _root.got2go = 1;
      gotoAndPlay(4);
   }
};
