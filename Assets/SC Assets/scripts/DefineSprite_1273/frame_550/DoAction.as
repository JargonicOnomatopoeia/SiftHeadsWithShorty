_root.v_move2 = 4;
stop();
onEnterFrame = function()
{
   if(_root.boxx.boxx2.en_3.die == 2 && _root.boxx.boxx2.en_4.die == 2)
   {
      _root.boxx.boxx2.en_3.die = 1;
      _root.boxx.boxx2.en_4.die = 1;
      _root.v_move2 = 5;
      gotoAndPlay(551);
   }
};
