onClipEvent(enterFrame){
   if(this.hitTest(_root.bullet._x,_root.bullet._y,true))
   {
      _root.bloodburstx = _root.bullet._x;
      _root.bloodbursty = _root.bullet._y;
      _root.bloodburst = 2;
      removeMovieClip(_root.bullet);
      hited = 2;
   }
}
