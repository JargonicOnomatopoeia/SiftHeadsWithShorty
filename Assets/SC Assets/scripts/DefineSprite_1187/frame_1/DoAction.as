stop();
onEnterFrame = function()
{
   if(_root.vinnie_canmove != 2)
   {
      _parent.stop();
   }
   if(_root.v_move2 == 2)
   {
      _root.v_move2 = 1;
      gotoAndPlay(174);
   }
   if(_root.v_move2 == -2)
   {
      _root.v_move2 = 1;
      gotoAndPlay(365);
   }
   if(_root.v_move2 == 3)
   {
      _root.v_move2 = 1;
      gotoAndPlay(151);
   }
   if(_root.v_move2 == 4)
   {
      _root.v_move2 = 1;
      gotoAndPlay(297);
   }
   if(_root.v_move2 == 5)
   {
      _root.v_move2 = 1;
      gotoAndPlay(101);
   }
   if(_root.v_move2 == 6)
   {
      _root.v_move2 = 1;
      gotoAndPlay(2);
   }
   if(_root.v_move2 == 7)
   {
      _root.v_move2 = 1;
      gotoAndPlay(419);
   }
   if(_root.v_move2 == 8)
   {
      _parent.stop();
      _root.v_move2 = 1;
      gotoAndPlay(475);
   }
   if(_root.v_move2 == 9)
   {
      _parent.stop();
      _root.v_move2 = 1;
      gotoAndPlay(580);
   }
   if(_root.v_move2 == 10)
   {
      _root.v_move2 = 1;
      gotoAndPlay(2);
   }
   if(_root.v_move2 == 11)
   {
      _root.v_move2 = 1;
      gotoAndPlay(645);
   }
   if(_root.v_move2 == 12)
   {
      _root.v_move2 = 1;
      gotoAndPlay(676);
   }
};
