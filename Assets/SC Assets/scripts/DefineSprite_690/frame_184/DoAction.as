_root.moyen_sc = Math.round((_root.sc_lvl_1 + _root.sc_lvl_2 + _root.sc_lvl_3 + _root.sc_lvl_4 + _root.sc_lvl_5 + _root.sc_lvl_6 + _root.sc_lvl_7) / 7);
if(_root.moyen_sc < 25)
{
   _root.finalscore = "loser";
}
if(_root.moyen_sc >= 25 && _root.moyen_sc < 50)
{
   _root.finalscore = "amateur";
}
if(_root.moyen_sc >= 50 && _root.moyen_sc < 75)
{
   _root.finalscore = "advanced";
}
if(_root.moyen_sc >= 75 && _root.moyen_sc < 100)
{
   _root.finalscore = "pro";
}
if(_root.moyen_sc == 100)
{
   _root.finalscore = "sifter";
}
