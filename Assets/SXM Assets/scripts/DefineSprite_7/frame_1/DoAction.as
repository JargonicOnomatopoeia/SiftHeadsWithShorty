_root.stop();
_root.PercentLoaded = Math.round(_root.getBytesLoaded() / _root.getBytesTotal() * 100);
if(_root.PercentLoaded != 100)
{
   setProperty(bar, _xscale, _root.PercentLoaded);
}
else
{
   gotoAndStop("loaded");
}
