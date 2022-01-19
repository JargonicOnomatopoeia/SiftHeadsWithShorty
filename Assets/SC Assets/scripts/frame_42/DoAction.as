stop();
Mouse.hide();
_root.wp = _root.wp_ch;
_root.bullets_used = 0;
_root.vinnie_canmove = 2;
_root.mort = 1;
_root.energy = 100;
_root.v_move = 1;
_root.v_move0 = 1;
_root.v_move1 = 1;
_root.v_move2 = 1;
_root.sd_snipe = 1;
_root.zoom_st = 0;
if(_root.wp == 1)
{
   _root.ammo_limit = _root.st_2_1;
   _root.ammo = _root.ammo_limit;
   _root.zoom_max = _root.st_4_1;
}
if(_root.wp == 2)
{
   _root.ammo_limit = _root.st_2_2;
   _root.ammo = _root.ammo_limit;
   _root.zoom_max = _root.st_4_2;
}
if(_root.wp == 3)
{
   _root.ammo_limit = _root.st_2_3;
   _root.ammo = _root.ammo_limit;
   _root.zoom_max = _root.st_4_3;
}
_root.zoom_vitesse = 1;
_root.zoom_variation = 0.08;
_root.zoom_vitesse_min = 1 - _root.zoom_variation;
_root.zoom_vitesse_max = 1 + _root.zoom_variation;
_root.zoom_accel = 1.005;
_root.zoom_at_max = false;
_root.zoom_at_min = false;
_root.zoom_vitesseb = _root.zoom_vitesse;
if(_root.lvl == 1)
{
   _root.bullets_useful = 5;
}
if(_root.lvl == 2)
{
   _root.bullets_useful = 4;
}
if(_root.lvl == 3)
{
   _root.stademur = 1;
   _root.bullets_useful = 5;
}
if(_root.lvl == 4)
{
   _root.bullets_useful = 4;
}
if(_root.lvl == 5)
{
   _root.bullets_useful = 6;
}
if(_root.lvl == 6)
{
   _root.bullets_useful = 9;
}
if(_root.lvl == 7)
{
   _root.bullets_useful = 7;
}
onEnterFrame = function()
{
   if(_root.got2go == 2)
   {
      _root.got2go = 1;
      gotoAndStop(39);
      _root.muzintrogo = 2;
      Mouse.show();
   }
   if(_root.got2go == 3)
   {
      _root.got2go = 1;
      gotoAndStop(40);
      _root.muzintrogo = 2;
      Mouse.show();
   }
   if(_root.energy < 0)
   {
      _root.energy = 0;
   }
   if(_root.energy == 0 && _root.mort == 1)
   {
      _root.mort = 2;
      _root.v_move2 = 8;
   }
   if(Key.isDown(87) && _root.zoom_at_max == false)
   {
      _root.sd_snipe = 2;
      _root.zoom_at_min = false;
      _root.zoom_vitesse = _root.zoom_vitesse * _root.zoom_accel;
   }
   if(Key.isDown(83) && _root.zoom_at_min == false)
   {
      _root.sd_snipe = 3;
      _root.zoom_at_max = false;
      _root.zoom_vitesse = _root.zoom_vitesse / _root.zoom_accel;
   }
   if(!Key.isDown(87) && !Key.isDown(83))
   {
      _root.sd_snipe = 1;
   }
   if(_root.zoom_at_min == true || _root.zoom_at_max == true)
   {
      _root.sd_snipe = 1;
   }
   if(!Key.isDown(83) && !Key.isDown(87))
   {
      if(_root.zoom_vitesse < _root.zoom_vitesse_max && _root.zoom_vitesse > 1)
      {
         _root.zoom_vitesse = _root.zoom_vitesse / _root.zoom_accel;
      }
      else if(_root.zoom_vitesse > _root.zoom_vitesse_min && _root.zoom_vitesse < 1)
      {
         _root.zoom_vitesse = _root.zoom_vitesse * _root.zoom_accel;
      }
   }
   if(_root.zoom_vitesse < 1 + (_root.zoom_accel - 1) && _root.zoom_vitesse > 1 - (_root.zoom_accel - 1) && !Key.isDown(83) && !Key.isDown(87))
   {
      _root.zoom_vitesse = 1;
   }
   else if(_root.zoom_vitesse < _root.zoom_vitesse_min)
   {
      _root.zoom_at_min = true;
      _root.zoom_vitesse = _root.zoom_vitesse_min;
   }
   else if(_root.zoom_vitesse > _root.zoom_vitesse_max)
   {
      _root.zoom_at_max = true;
      _root.zoom_vitesse = _root.zoom_vitesse_max;
   }
   if((_root.zoom_st = _root.zoom_st * _root.zoom_vitesse) > 100 && (_root.zoom_st = _root.zoom_st * _root.zoom_vitesse) < _root.zoom_max * 100)
   {
      _root.boxx._xscale = _root.boxx._xscale * _root.zoom_vitesse;
      d;
      _root.boxx._yscale = _root.boxx._yscale * _root.zoom_vitesse;
      _root.sizeRef._xscale = _root.sizeRef._xscale * _root.zoom_vitesse;
      _root.sizeRef._yscale = _root.sizeRef._yscale * _root.zoom_vitesse;
   }
   if(_root.zoom_st >= _root.zoom_max * 100 - _root.zoom_variation * 100 / 4)
   {
      _root.boxx._xscale = _root.zoom_max * 100;
      _root.boxx._yscale = _root.zoom_max * 100;
      _root.sizeRef._xscale = _root.zoom_max * 100;
      _root.sizeRef._yscale = _root.zoom_max * 100;
   }
   else if(_root.zoom_st <= 100 + _root.zoom_variation * 100 / 4)
   {
      _root.boxx._xscale = 100;
      _root.boxx._yscale = 100;
      _root.sizeRef._xscale = 100;
      _root.sizeRef._yscale = 100;
   }
   if((_root.zoom_st >= _root.zoom_max * 100 - _root.zoom_variation * 100 || _root.zoom_st <= 100 + _root.zoom_variation * 100) && !Key.isDown(83) && !Key.isDown(87))
   {
      _root.zoom_vitesse = 1;
   }
   zoom_st = _root.sizeRef._xscale;
   _root.boxx._x = 400 - (_root._xmouse - 400) / 400 * ((_root.sizeRef._width - 800) / 2);
   _root.boxx._y = 220 - (_root._ymouse - 220) / 220 * ((_root.sizeRef._height - 440) / 2);
};
