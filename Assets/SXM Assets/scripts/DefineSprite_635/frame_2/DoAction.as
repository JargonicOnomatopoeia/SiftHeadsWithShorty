stop();
onEnterFrame = function()
{
   if(_root.nbenplace < _root.nbenlim && _root.nbenvoy != _root.nbenlvl && _currentframe == 2)
   {
      gotoAndPlay(3);
   }
};
