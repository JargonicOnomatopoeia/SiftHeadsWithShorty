stop();
_root.ifupgrademenu = 1;
onEnterFrame = function()
{
   if(_root.got2go == 2)
   {
      _root.got2go = 1;
      gotoAndPlay(43);
   }
};
