stop();
onEnterFrame = function()
{
   if(_root.bras_front._rotation == -44 && _root.hitup == 1)
   {
      _root.hitup = 2;
      _root.canshooot = _root.canshooot + 1;
      gotoAndStop(2);
   }
};
