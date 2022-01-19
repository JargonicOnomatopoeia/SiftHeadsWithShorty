stop();
_root.v_move2 = 7;
onEnterFrame = function()
{
   if(_root.guydead == 2)
   {
      _root.guydead = 1;
      gotoAndPlay(1381);
   }
};
