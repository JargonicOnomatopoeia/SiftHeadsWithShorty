stop();
onEnterFrame = function()
{
   if(_parent._parent.upnumber == 1)
   {
      st2 = _root.upgrade_value_1;
   }
   if(_parent._parent.upnumber == 2)
   {
      st2 = _root.upgrade_value_2;
   }
   if(_parent._parent.upnumber == 3)
   {
      st2 = _root.upgrade_value_3;
   }
   if(_parent._parent.upnumber == 4)
   {
      st2 = _root.upgrade_value_4;
   }
   maxx = _parent._parent.maxx;
   gotoAndStop(Math.round(st2 * 100 / _parent._parent.maxx));
};
