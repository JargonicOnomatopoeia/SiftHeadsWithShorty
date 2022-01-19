stop();
onEnterFrame = function()
{
   if(_root.golimovitre == 2 && _root.vinnieisdown == 2)
   {
      _root.vinnieisdown = 1;
      _root.golimovitre = 1;
      gotoAndPlay(2);
   }
};
