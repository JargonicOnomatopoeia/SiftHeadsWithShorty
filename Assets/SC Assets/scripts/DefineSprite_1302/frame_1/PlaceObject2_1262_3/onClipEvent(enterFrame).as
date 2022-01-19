onClipEvent(enterFrame){
   if(_root.enshot == 2)
   {
      _root.enshot = 1;
      _root.canmove = 1;
      if(block == 2)
      {
         if(_currentframe < 884 || _currentframe > 891)
         {
            gotoAndStop("mov18");
            play();
         }
      }
      else if(_currentframe < 878 || _currentframe > 883)
      {
         gotoAndStop("mov17");
         play();
         _root.energy = _root.energy - _root.enpwshot;
      }
   }
   if(_root.attack == 2 && _root.canmove == 2)
   {
      _root.swordout = 2;
      _root.attack = 3;
      if(_Y < _root.plancher)
      {
         _root.canmove = 1;
         _root.attack = 6;
      }
      else if(block == 2)
      {
         _root.canmove = 1;
         block = 1;
         if(_currentframe < 846 || _currentframe > 863)
         {
            gotoAndStop("mov15");
            play();
         }
      }
      else if(_root.virefatale3 >= 2)
      {
         if(_currentframe < 864 || _currentframe > 877)
         {
            gotoAndStop("mov16");
            play();
         }
      }
      else if(_currentframe < 359 || _currentframe > 429)
      {
         gotoAndStop("mov7");
         play();
      }
   }
   if(_root.attack == 6)
   {
      if(_Y < _root.plancher)
      {
         _Y = _Y + 20;
         if(_currentframe < 840 || _currentframe > 845)
         {
            gotoAndStop("mov14");
            play();
         }
      }
      else
      {
         _Y = _root.plancher;
         _root.shake = 2;
         _root.attack = 1;
         _root.canmove = 2;
      }
   }
   if(_root.lvlavecmarche == 2)
   {
      if(_Y > _root.plancher)
      {
         jump = 1;
         _Y = _root.plancher;
      }
   }
   else if(_Y > _root.plancher && jump == 4)
   {
      jump = 1;
      _Y = _root.plancher;
   }
   if(_Y < _root.plancher && jump == 1)
   {
      jump = 3;
      jspeed = 1;
   }
   if(_root.canmove == 2 && _root.attack == 1)
   {
      if(Key.isDown(68) && block == 1)
      {
         if(dir != "R")
         {
            _root.virefatale2 = 2;
            _root.courseb = 1;
            _root.course = 1;
            _xscale = _xscale * -1;
            _X = _X - 35;
            dir = "R";
         }
         if(_root.course == 1)
         {
            _X = _X + speed;
            if(_root.swordout == 2)
            {
               if(jump == 1)
               {
                  if(_currentframe < 579 || _currentframe > 678)
                  {
                     gotoAndStop("mov9");
                     play();
                  }
               }
               else if(_currentframe < 808 || _currentframe > 839)
               {
                  gotoAndStop("mov13");
                  play();
               }
            }
            else if(jump == 1)
            {
               if(_currentframe < 286 || _currentframe > 335)
               {
                  gotoAndStop("mov5");
                  play();
               }
            }
            else if(_currentframe < 776 || _currentframe > 807)
            {
               gotoAndStop("mov12");
               play();
            }
         }
         else
         {
            _X = _X + speed * 3.8;
            if(_root.swordout == 2)
            {
               if(jump == 1)
               {
                  if(_currentframe < 679 || _currentframe > 770)
                  {
                     gotoAndStop("mov10");
                     play();
                  }
               }
               else if(_currentframe < 808 || _currentframe > 839)
               {
                  gotoAndStop("mov13");
                  play();
               }
            }
            else if(jump == 1)
            {
               if(_currentframe < 336 || _currentframe > 358)
               {
                  gotoAndStop("mov6");
                  play();
               }
            }
            else if(_currentframe < 776 || _currentframe > 807)
            {
               gotoAndStop("mov12");
               play();
            }
         }
      }
      if(_root.tournetoikirostp == 2)
      {
         _root.tournetoikirostp = 1;
         if(dir != "L")
         {
            _root.courseb = 1;
            _root.course = 1;
            _xscale = _xscale * -1;
            _X = _X + 35;
            dir = "L";
         }
      }
      if(Key.isDown(65) && block == 1)
      {
         if(dir != "L")
         {
            _root.virefatale2 = 2;
            _root.courseb = 1;
            _root.course = 1;
            _xscale = _xscale * -1;
            _X = _X + 35;
            dir = "L";
         }
         if(_root.course == 1)
         {
            _X = _X - speed;
            if(_root.swordout == 2)
            {
               if(jump == 1)
               {
                  if(_currentframe < 579 || _currentframe > 678)
                  {
                     gotoAndStop("mov9");
                     play();
                  }
               }
               else if(_currentframe < 808 || _currentframe > 839)
               {
                  gotoAndStop("mov13");
                  play();
               }
            }
            else if(jump == 1)
            {
               if(_currentframe < 286 || _currentframe > 335)
               {
                  gotoAndStop("mov5");
                  play();
               }
            }
            else if(_currentframe < 776 || _currentframe > 807)
            {
               gotoAndStop("mov12");
               play();
            }
         }
         else
         {
            _X = _X - speed * 3.8;
            if(_root.swordout == 2)
            {
               if(jump == 1)
               {
                  if(_currentframe < 679 || _currentframe > 770)
                  {
                     gotoAndStop("mov10");
                     play();
                  }
               }
               else if(_currentframe < 808 || _currentframe > 839)
               {
                  gotoAndStop("mov13");
                  play();
               }
            }
            else if(jump == 1)
            {
               if(_currentframe < 336 || _currentframe > 358)
               {
                  gotoAndStop("mov6");
                  play();
               }
            }
            else if(_currentframe < 776 || _currentframe > 807)
            {
               gotoAndStop("mov12");
               play();
            }
         }
      }
      if(!Key.isDown(65) && !Key.isDown(68) && block == 1)
      {
         if(_root.swordout == 2)
         {
            if(jump == 1)
            {
               if(_currentframe < 430 || _currentframe > 578)
               {
                  gotoAndStop("mov8");
                  play();
               }
            }
            else if(_currentframe < 808 || _currentframe > 839)
            {
               gotoAndStop("mov13");
               play();
            }
         }
         else if(jump == 1)
         {
            if(_currentframe < 72 || _currentframe > 285)
            {
               gotoAndStop("mov2");
               play();
            }
         }
         else if(_currentframe < 776 || _currentframe > 807)
         {
            gotoAndStop("mov12");
            play();
         }
      }
      if(Key.isDown(83))
      {
         block = 2;
         _root.swordout = 2;
         if(_currentframe < 771 || _currentframe > 775)
         {
            gotoAndStop("mov11");
            play();
         }
      }
      if(!Key.isDown(83))
      {
         block = 1;
      }
      if(Key.isDown(87) && block == 1)
      {
         if(jump == 1)
         {
            jspeed = jspeedini;
            jump = 2;
         }
      }
      if(jump == 2)
      {
         if(jspeed > 2)
         {
            _Y = _Y - jspeed;
            jspeed = jspeed * 0.8;
         }
         else
         {
            jump = 3;
            jspeed = 3;
         }
      }
      if(jump == 3)
      {
         if(jspeed > 1)
         {
            jspeed = jspeed - 1;
         }
         else
         {
            jump = 4;
            jspeed = 2;
         }
      }
      if(jump == 4)
      {
         if(jspeed < jspeedini)
         {
            if(jspeed + _Y >= _root.plancher)
            {
               _Y = _root.plancher;
               jump = 1;
            }
            else
            {
               _Y = _Y + jspeed;
               jspeed = jspeed * 1.2;
            }
         }
         if(jspeed >= jspeedini)
         {
            if(jspeed + _Y >= _root.plancher)
            {
               _Y = _root.plancher;
               jump = 1;
            }
            else
            {
               _Y = _Y + jspeed;
            }
         }
      }
   }
}
