stop();
onEnterFrame = function()
{
   if(_root.boxx.boxx2.en_1.die == 2 && _root.boxx.boxx2.en_2.die == 2)
   {
      _root.boxx.boxx2.en_1.die = 1;
      _root.boxx.boxx2.en_2.die = 1;
      gotoAndPlay(201);
   }
};
