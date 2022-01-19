stop();
onEnterFrame = function()
{
   gotoAndStop(Math.floor(_root.energy * 300 / _root.energy2 + 1));
};
