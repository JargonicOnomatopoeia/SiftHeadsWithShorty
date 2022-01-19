_root.envoy_1_1 = 1;
_root.envoy_1_2 = 1;
_root.envoy_1_3 = 1;
_root.envoy_2_1 = 1;
_root.envoy_2_2 = 1;
_root.envoy_2_3 = 1;
_root.envoy_3_1 = 1;
_root.envoy_3_2 = 1;
_root.envoy_3_3 = 1;
_root.envoy_4_1 = 1;
_root.envoy_4_2 = 1;
_root.envoy_4_3 = 1;
_root.nbenplace = 0;
_root.nbenkill = 0;
_root.nbenplace = 0;
_root.nbenvoy = 0;
_root.nbentype_1 = 0;
_root.nbentype_2 = 0;
_root.nbentype_3 = 0;
_root.nbentype_4 = 0;
function brasBackRotation()
{
   _root.bras_back._rotation = _root.bras_front._rotation * 1.3;
}
if(_root.lvl == 1)
{
   _root.typeendeblok = 2;
   _root.nbenlvl = 100;
   _root.nbenlim = 3;
   _root.nbtempsen = 1;
}
if(_root.lvl == 2)
{
   _root.nbenlvl = 15;
   _root.nbenlim = 2;
   _root.nbtempsen = 3;
   _root.typeendeblok = 2;
}
if(_root.lvl == 3)
{
   _root.nbenlvl = 20;
   _root.nbenlim = 3;
   _root.nbtempsen = 2;
   _root.typeendeblok = 2;
}
if(_root.lvl == 4)
{
   _root.nbenlvl = 20;
   _root.nbenlim = 4;
   _root.nbtempsen = 2;
   _root.typeendeblok = 3;
}
if(_root.lvl == 5)
{
   _root.nbenlvl = 25;
   _root.nbenlim = 4;
   _root.nbtempsen = 1;
   _root.typeendeblok = 3;
}
if(_root.lvl == 6)
{
   _root.nbenlvl = 25;
   _root.nbenlim = 5;
   _root.nbtempsen = 1;
   _root.typeendeblok = 4;
}
if(_root.lvl == 7)
{
   _root.nbenlvl = 30;
   _root.nbenlim = 5;
   _root.nbtempsen = 1;
   _root.typeendeblok = 4;
}
if(_root.lvl == 8)
{
   _root.nbenlvl = 35;
   _root.nbenlim = 5;
   _root.nbtempsen = 1;
   _root.typeendeblok = 4;
}
if(_root.lvl == 9)
{
   _root.nbenlvl = 40;
   _root.nbenlim = 7;
   _root.nbtempsen = 1;
   _root.typeendeblok = 4;
}
if(_root.lvl == 10)
{
   _root.nbenlvl = 8;
   _root.nbenlim = 6;
   _root.nbtempsen = 1;
   _root.typeendeblok = 4;
}
stop();
this.onEnterFrame = function()
{
   if(_root.nbenkill == _root.nbenlvl)
   {
      if(_root.lvl != 9)
      {
         _root.nbenkill = 0;
         _root.lvl = _root.lvl + 1;
         gotoAndStop(25);
      }
      else
      {
         _root.nbenkill = 0;
         _root.lvl = 2;
         gotoAndStop(26);
         _root.shogundispo = 2;
      }
   }
   if(_root.energy <= 0)
   {
      _root.energy = 100;
      gotoAndStop(28);
   }
   if(_root.staddafukgame == 2)
   {
      _root.staddafukgame = 1;
      _root.lvl = 2;
      gotoAndStop(24);
   }
   if(Key.isDown(37) && _root.laseron == 2 && _root.canshooot >= 8)
   {
      _root.laseron = 1;
      if(_root.canshooot == 8)
      {
         _root.canshooot = 9;
      }
   }
   if(Key.isDown(39) && _root.laseron == 1 && _root.canshooot >= 6)
   {
      _root.laseron = 2;
      if(_root.canshooot == 6)
      {
         _root.canshooot = 7;
      }
   }
   if(Key.isDown(38) && this.bras_front._rotation > -45)
   {
      this.bras_front._rotation = this.bras_front._rotation - 1;
      if(this.bras_front._rotation < -45)
      {
         this.bras_front._rotation = -45;
      }
      brasBackRotation();
   }
   if(Key.isDown(40) && this.bras_front._rotation < 45)
   {
      this.bras_front._rotation = this.bras_front._rotation + 1;
      if(this.bras_front._rotation > 45)
      {
         this.bras_front._rotation = 45;
      }
      brasBackRotation();
   }
   if(Key.isDown(32) && _root.bullets != 0 && this.bras_front.bras._currentframe == 1 && _root.canshooot >= 10)
   {
      var _loc3_ = new Object();
      _loc3_.x = 111.5;
      _loc3_.y = 2.5;
      this.bras_front.bras.localToGlobal(_loc3_);
      var _loc4_ = _root.attachMovie("bullet","bullet",_root.getNextHighestDepth());
      _loc4_._x = _loc3_.x;
      _loc4_._y = _loc3_.y;
      _loc4_._rotation = bras_front._rotation;
      _loc4_.onEnterFrame = function()
      {
         speed = 40;
         speedx = Math.sin((this._rotation + 90) * 0.017453292519943295) * speed;
         speedy = Math.cos((this._rotation + 90) * 0.017453292519943295) * speed * -1;
         this._x = this._x + speedx;
         this._y = this._y + speedy;
         if(this._x > 800)
         {
            removeMovieClip(this);
         }
         if(this._y > 440 || this._y < 0)
         {
            removeMovieClip(this);
         }
      };
      this.bras_front.bras.play();
      this.bras_back.bras.play();
      if(_root.legun == 1)
      {
         if(this.bras_front._rotation > -25)
         {
            this.bras_front._rotation = this.bras_front._rotation - 20;
         }
         else
         {
            this.bras_front._rotation = -45;
         }
      }
      else if(this.bras_front._rotation > -5)
      {
         this.bras_front._rotation = this.bras_front._rotation - 40;
      }
      else
      {
         this.bras_front._rotation = -45;
      }
      brasBackRotation();
   }
};
