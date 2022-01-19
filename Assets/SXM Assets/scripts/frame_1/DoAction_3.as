function menuChoiceOne()
{
   getUrl("http://www.gamesfree.ca", "");
}
stop();
NewMenu = new ContextMenu();
NewMenu.hideBuiltInItems();
NewMenu.customItems.push(new ContextMenuItem("Gamesfree.ca",menuChoiceOne));
this.menu = NewMenu;
