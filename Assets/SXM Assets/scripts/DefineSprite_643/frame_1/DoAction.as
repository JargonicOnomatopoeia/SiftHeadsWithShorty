stop();
onEnterFrame = function()
{
   if(_root.etincelle == 2)
   {
      _root.etincel._x = _root.bloodburstx;
      _root.etincel._y = _root.bloodbursty;
      _root.etincelle = 1;
      gotoAndPlay(2);
   }
};
