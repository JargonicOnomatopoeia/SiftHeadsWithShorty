_root.ifupgrademenu = 1;
_root.gobackmenu = 2;
if(_root.buygunmenu == 2)
{
   gotoAndPlay(181);
}
onEnterFrame = function()
{
   if(_root.upgrade_completed == 2 && _root.gobackmenu != 2)
   {
      _root.upgrade_completed = 1;
      gotoAndPlay(151);
   }
};
