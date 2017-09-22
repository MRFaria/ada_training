with Ada.Numerics.Elementary_Functions; use Ada.Numerics.Elementary_Functions;

with Display;       use Display;
with Display.Basic; use Display.Basic;

procedure Main is
   type StarName is (Sun, Earth, Moon, Satellite);

   type Star is record
      Speed : Float;
      Distance : Float;
      Angle : Float;
      Shape : Shape_Id;
      PreviousBody : StarName;
   end record;

   Stars : array(Starname) of Star;

begin
   Stars (Sun).Shape              := New_Circle (0.0, 0.0, 20.0, Yellow);
   Stars (Sun).Speed              := 0.0;
   Stars (Sun).Distance           := 0.0;
   Stars (Sun).Angle              := 0.0;
   Stars (Sun).PreviousBody       := Sun;


   Stars (Earth).Shape            := New_Circle (0.0, 0.0, 5.0, Blue);
   Stars (Earth).Speed            := 0.005;
   Stars (Earth).Distance         := 60.0;
   Stars (Earth).Angle            := 0.0;
   Stars (Earth).PreviousBody     := Sun;


   Stars (Moon).Shape             := New_Circle (0.0, 0.0, 2.0, White);
   Stars (Moon).Speed             := -0.03;
   Stars (Moon).Distance          := 10.0;
   Stars (Moon).Angle             := 0.0;
   Stars (Moon).PreviousBody      := Earth;


   Stars (Satellite).Shape        := New_Circle (0.0, 0.0, 1.2, Red);
   Stars (Satellite).Speed        := 0.008;
   Stars (Satellite).Distance     := 30.2;
   Stars (Satellite).Angle        := 0.0;
   Stars (Satellite).PreviousBody := Earth;


   loop
      delay 0.01;

      for J in Earth .. Satellite loop
         Set_X
           (Stars (J).Shape,
            Get_X(Stars (Stars (J).PreviousBody).Shape) +
            Cos (Stars (J).Angle) * Stars (J).Distance);
         Set_Y
           (Stars (J).Shape,
            Get_Y (Stars (Stars (J).PreviousBody).Shape) +
            Sin (Stars (J).Angle) * Stars (J).Distance);
      end loop;

      for J in StarName'Range loop
         Stars (J).Angle := Stars (J).Angle + Stars (J).Speed;
      end loop;
   end loop;
end Main;
