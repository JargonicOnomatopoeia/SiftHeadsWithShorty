stop();
_root.lvl_act = 43;
_root.v_move2 = 7;
onEnterFrame = function()
{
   if(_root.boxx.boxx2.en_3.die == 2 && _root.boxx.boxx2.en_4.die == 2)
   {
      _root.boxx.boxx2.en_3.die = 1;
      _root.boxx.boxx2.en_4.die = 1;
      gotoAndPlay(526);
   }
};
