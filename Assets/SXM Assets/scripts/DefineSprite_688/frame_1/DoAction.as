stop();
onEnterFrame = function()
{
   if(_root.bras_front._rotation == 44 && _root.hitdown == 1)
   {
      _root.hitdown = 2;
      _root.canshooot = _root.canshooot + 1;
      gotoAndStop(2);
   }
};
