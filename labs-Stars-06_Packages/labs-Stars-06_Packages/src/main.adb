with Ada.Numerics.Elementary_Functions; use Ada.Numerics.Elementary_Functions;
with Display;       use Display;
with Display.Basic; use Display.Basic;
with Stars; use Stars;


procedure Main is
   Stars : Star_Array (1 .. 5);

   Sun       : Star_Index := 1;
   Earth     : Star_Index := 2;
   Moon      : Star_Index := 3;
   Satellite : Star_Index := 4;
   Comet     : Star_Index := 5;

begin
   Stars (Sun)       := Create_Star (20.0, Yellow, 0.0, Sun, 0.0);
   Stars (Earth)     := Create_Star (5.0, Blue, 0.005, Sun, 50.0);
   Stars (Moon)      := Create_Star (2.0, White, -0.03, Earth, 10.0);
   Stars (Satellite) := Create_Star (0.8, Red, 0.007, Earth, 6.0);
   Stars (Comet)     := Create_Star (2.0, Cyan, 0.02, Sun, 75.0);

   loop
      for J in Stars'Range loop
         if Stars (J).Turns_Around in Stars'Range then
            Move_Around (Stars (J), Stars (Stars (J).Turns_Around));
         end if;
      end loop;
      delay 0.01;
   end loop;
end Main;
