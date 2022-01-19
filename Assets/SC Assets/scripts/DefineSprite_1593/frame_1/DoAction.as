stop();
onEnterFrame = function()
{
   gotoAndStop(Math.round(_root.zoom_st / 100 * 100 / _root.zoom_max));
};
