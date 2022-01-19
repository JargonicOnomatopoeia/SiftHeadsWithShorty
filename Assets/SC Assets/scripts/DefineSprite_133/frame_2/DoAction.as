stopAllSounds();
stop();
onEnterFrame = function()
{
   if(_root.muzintrogo == 2)
   {
      _root.muzintrogo = 1;
      gotoAndPlay(3);
   }
};
