stop();
onEnterFrame = function()
{
   if(_root.zoom_vitesse != _root.zoom_vitesseb)
   {
      _root.zoom_vitesseb = _root.zoom_vitesse;
      if(_currentframe == 1)
      {
         gotoAndPlay(2);
      }
   }
};
