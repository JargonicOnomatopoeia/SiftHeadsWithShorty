_root.cash2 = _root.cash + " - $";
onEnterFrame = function()
{
   if(_root.cashbbb != _root.cash)
   {
      _root.cashbbb = _root.cash;
      gotoAndPlay(1);
   }
};
