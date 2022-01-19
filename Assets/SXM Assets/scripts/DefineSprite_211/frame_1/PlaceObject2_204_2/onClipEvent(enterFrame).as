onClipEvent(enterFrame){
   if(this.hitTest(_root.bullet._x,_root.bullet._y,true))
   {
      _root.boulenoelexplode = 2;
      removeMovieClip(_root.bullet);
   }
}
