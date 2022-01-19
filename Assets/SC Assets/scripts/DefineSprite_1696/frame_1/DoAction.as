stopAllSounds();
if(_root.lvl == 4)
{
   gotoAndPlay(4);
}
if(_root.lvl == 5 || _root.lvl == 6)
{
   gotoAndPlay(6);
}
if(_root.lvl == 7 || _root.lvl == 8)
{
   gotoAndPlay(8);
}
onEnterFrame = function()
{
   if(_root.changemusiclvl6 == 2)
   {
      _root.changemusiclvl6 = 1;
      gotoAndPlay(10);
   }
};
