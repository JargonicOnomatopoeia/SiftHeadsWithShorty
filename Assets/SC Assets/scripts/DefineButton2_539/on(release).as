on(release){
   if(_root.wp_ch == 1)
   {
      if(_root.gotwp_2 == 2)
      {
         _root.wp_ch = 2;
      }
      else if(_root.gotwp_3 == 2)
      {
         _root.wp_ch = 3;
      }
   }
   else if(_root.wp_ch == 2)
   {
      if(_root.gotwp_3 == 2)
      {
         _root.wp_ch = 3;
      }
      else
      {
         _root.wp_ch = 1;
      }
   }
   else if(_root.wp_ch == 3)
   {
      _root.wp_ch = 1;
   }
}
