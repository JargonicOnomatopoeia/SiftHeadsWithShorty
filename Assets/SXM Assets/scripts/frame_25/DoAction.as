_root.ptsgive = 4;
stop();
onEnterFrame = function()
{
   if(_root.ptsgive == 0)
   {
      _root.ptsgive = -1;
      prevFrame();
   }
};
