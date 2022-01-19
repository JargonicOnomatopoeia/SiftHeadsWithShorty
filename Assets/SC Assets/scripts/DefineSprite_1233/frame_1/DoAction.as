onEnterFrame = function()
{
   if(_root.v_move == 2)
   {
      _root.v_move = 1;
      gotoAndPlay(2);
   }
   if(_root.v_move == 3)
   {
      _root.v_move = 1;
      _root.v_move2 = 5;
      gotoAndPlay(61);
   }
   if(_root.boxx.boxx2.sp_2.die == 2)
   {
      _root.boxx.boxx2.sp_2.die = 1;
      gotoAndPlay(363);
   }
};
