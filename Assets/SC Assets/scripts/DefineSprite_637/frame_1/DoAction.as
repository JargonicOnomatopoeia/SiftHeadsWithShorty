_root.rate50_energy = _root.energy / 2;
_root.rate50_bullets = (100 - (100 * _root.bullets_used / _root.bullets_useful - 100)) / 2;
_root.rate1 = Math.round(_root.rate50_energy + _root.rate50_bullets);
if(_root.rate1 < 25)
{
   _root.rate3 = "loser";
}
if(_root.rate1 >= 25 && _root.rate1 < 50)
{
   _root.rate3 = "amateur";
}
if(_root.rate1 >= 50 && _root.rate1 < 75)
{
   _root.rate3 = "advanced";
}
if(_root.rate1 >= 75 && _root.rate1 < 100)
{
   _root.rate3 = "pro";
}
if(_root.rate1 == 100)
{
   _root.rate3 = "sifter";
}
_root.rate2 = "your rating - " + _root.rate3;
if(eval("_root.sc_lvl_" + (_root.lvl - 1)) == 0)
{
   set("_root.sc_lvl_" + (_root.lvl - 1),_root.rate1);
}
