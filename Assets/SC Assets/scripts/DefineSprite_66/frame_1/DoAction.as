stop();
_root.ballintrostatus = 1;
onEnterFrame = function()
{
   if(_root.gegoballintro == 2)
   {
      _root.gegoballintro = 1;
      gotoAndPlay(2);
   }
};
