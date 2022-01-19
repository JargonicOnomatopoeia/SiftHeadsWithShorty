function menuChoiceOne()
{
   getUrl("http://www.pyrozen.com", "");
}
stop();
_root.link_1_tit = "More Games";
_root.link_1 = "http://www.gamesfree.ca/";
_root.link_2_tit = "Gore Version";
_root.link_2 = "http://www.gamesfree.ca/gore/";
_root.link_3_tit = "Pyrozen";
_root.link_3 = "http://www.pyrozen.com/";
_root.link_4_tit = "High Scores";
_root.link_4 = "http://www.gamesfree.ca/hs/";
_root.link_5_tit = "Walkthrough";
_root.link_5 = "http://www.gamesfree.ca/walkthrough/";
_root.link_6_tit = "Bonus";
_root.link_6 = "http://www.gamesfree.ca/bonus/";
_root.user = SharedObject.getLocal("user_shortycovers");
onEnterFrame = function()
{
   urlStart = _url.indexOf("://") + 3;
   urlEnd = _url.indexOf("/",urlStart);
   domain = _url.substring(urlStart,urlEnd);
   LastDot = domain.lastIndexOf(".") - 1;
   domEnd = domain.lastIndexOf(".",LastDot) + 1;
   domain = domain.substring(domEnd,domain.length);
   if(domain != "gamesfree.ca" && _root.gore == 2)
   {
      _root.gofuckyourself = 3;
   }
};
NewMenu = new ContextMenu();
NewMenu.hideBuiltInItems();
NewMenu.customItems.push(new ContextMenuItem("Pyrozen",menuChoiceOne));
this.menu = NewMenu;
