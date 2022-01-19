_root.v_move2 = 6;
stop();
onEnterFrame = function()
{
   if(_root.boxx.boxx2.sp_1.die == 2)
   {
      _root.boxx.boxx2.sp_1.die = 1;
      gotoAndPlay(501);
   }
};
