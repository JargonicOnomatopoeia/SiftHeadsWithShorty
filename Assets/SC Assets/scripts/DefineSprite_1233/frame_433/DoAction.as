_root.v_move2 = 7;
_root.lvl_act = 6;
stop();
onEnterFrame = function()
{
   if(_root.boxx.boxx2.en_5.die == 2 && _root.boxx.boxx2.en_6.die == 2 && _root.boxx.boxx2.en_7.die == 2 && _root.boxx.boxx2.en_8.die == 2 && _root.boxx.boxx2.en_9.die == 2)
   {
      _root.boxx.boxx2.en_5.die = 1;
      _root.boxx.boxx2.en_6.die = 1;
      _root.boxx.boxx2.en_7.die = 1;
      _root.boxx.boxx2.en_8.die = 1;
      _root.boxx.boxx2.en_9.die = 1;
      _root.v_move2 = 5;
      gotoAndPlay(434);
   }
};
