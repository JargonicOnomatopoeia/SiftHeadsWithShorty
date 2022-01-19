onClipEvent(load){
   this.stop();
   this.nb = 22;
   this.energy = 3;
   if(eval("_root.man_" + this.nb) == 2 && this._currentframe == 1)
   {
      this.gotoAndPlay(2);
   }
   if(eval("_root.man_" + this.nb) == 3)
   {
      this.gotoAndStop(185);
   }
   if(eval("_root.man_" + this.nb) == 4)
   {
      this.gotoAndStop(218);
   }
}
