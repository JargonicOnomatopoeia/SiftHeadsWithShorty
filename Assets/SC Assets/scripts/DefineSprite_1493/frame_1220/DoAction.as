_root.v_move2 = 10;
stop();
onEnterFrame = function()
{
   if(_root.helidown == 2)
   {
      _root.helidown = 1;
      gotoAndPlay(1221);
   }
};
