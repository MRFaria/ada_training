with Display;       use Display;
with Display.Basic; use Display.Basic;
with Ada.Numerics.Elementary_Functions;
use Ada.Numerics.Elementary_Functions;

procedure Main is
   Sun_To_Earth : Float := 60.0;
   Earth_To_Moon : Float := 10.0;
   Sun : Shape_Id := New_Circle(0.0, 0.0, 20.0, color => Yellow);
   Earth : Shape_Id := New_Circle(0.0, Sun_To_Earth, 5.0, Blue);
   Moon : Shape_Id := New_Circle(0.0, Sun_To_Earth+Earth_To_Moon, 3.0, White);
   theta : Float := 0.0;
   deg_full : Float := 360.0;
begin
   loop
      Set_X(Earth, Sun_To_Earth*Cos(theta, deg_full));
      Set_Y(Earth, Sun_To_Earth*Sin(theta, deg_full));

      -- The moon moves around the earth ~30x faster then earth around the sun
      Set_X(Moon, Get_X(Earth) + Earth_To_Moon*Cos(-30.0*theta, deg_full));
      Set_Y(Moon, Get_Y(Earth) + Earth_To_Moon*Sin(-30.0*theta, deg_full));
      theta := theta + 0.1;
      delay(0.01);
   end loop;

end Main;
