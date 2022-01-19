_root.vinnie_canmove = 1;
onEnterFrame = function()
{
   a = 1;
   if(_root.vinnie_canmove != 2)
   {
      _parent.stop();
   }
};
