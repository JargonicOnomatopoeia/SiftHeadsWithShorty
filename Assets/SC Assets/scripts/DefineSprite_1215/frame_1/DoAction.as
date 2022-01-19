stop();
onEnterFrame = function()
{
   if(_root.lvl_act == 2)
   {
      _root.lvl_act = 1;
      gotoAndPlay(2);
   }
};
