stop();
this.onRollOver = function()
{
   this.gotoAndStop(2);
};
this.onRollOut = function()
{
   this.gotoAndStop(1);
};
this.onReleaseOutside = function()
{
   this.gotoAndStop(1);
};
this.onRelease = function()
{
   getUrl("http://www.bubblebox.com/", "_blank");
};
