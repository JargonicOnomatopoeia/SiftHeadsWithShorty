onClipEvent(enterFrame){
   if(this.dead == 3)
   {
      this.dead = 1;
      set("_root.man_" + this.nb,3);
      set("_root.cible_" + this.nb,2);
   }
   if(this.dead == 4)
   {
      this.dead = 1;
      set("_root.man_" + this.nb,4);
      set("_root.cible_" + this.nb,2);
   }
}
