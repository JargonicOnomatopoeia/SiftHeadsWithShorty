stop();
onEnterFrame = function()
{
   if(_root.clikgun == 2)
   {
      if(_root._ymouse <= 300)
      {
         gotoAndStop(2 + Math.floor((200 - (_root._ymouse - 100)) / 10));
      }
      if(_root._ymouse <= 100)
      {
         _root.gunclipinsert = 2;
         _root.clikgun = 1;
      }
   }
};
