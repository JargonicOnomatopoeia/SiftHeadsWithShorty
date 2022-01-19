onEnterFrame = function()
{
   dablood.stat = energy;
   if(dablood2.didi == 2)
   {
      dablood2.didi = 1;
      dead = 2;
   }
   if(hitzone.hited == 2)
   {
      hitzone.hited = 1;
      if(_root.legun == 2)
      {
         gotoAndPlay(21);
      }
      if(_root.legun == 1)
      {
         gotoAndPlay(192);
      }
   }
   if(hitzone.hited == 3)
   {
      hitzone.hited = 1;
      gotoAndPlay(149);
   }
   if(hitzone2.hited == 2)
   {
      hitzone2.hited = 1;
      if(energy == 2)
      {
         gotoAndPlay(77);
      }
      else
      {
         if(_root.legun == 2)
         {
            gotoAndPlay(264);
         }
         if(_root.legun == 1)
         {
            energy = energy + 1;
         }
      }
   }
};
