with Ada.Numerics.Elementary_Functions; use Ada.Numerics.Elementary_Functions;

with Display;       use Display;
with Display.Basic; use Display.Basic;

procedure Main is
   type Star is (Sun, Earth, Moon, Satellite);
   type Metric is (Speed, Distance, Angle);
   -- Next we create some array types
   -- Note that whilst it looks like this array is
   -- unconstrained, it is actually constrained by the range of Star
   type Shape_Array is array(Star) of Shape_Id;
   -- this is a 4 by 3 matrix essentially
   type Star_Metric is array(Star, Metric) of Float;

   Stars : Shape_Array :=
     (Sun => New_Circle (0.0, 0.0, 20.0, Yellow),
      Earth => New_Circle (0.0, 0.0, 5.0, Blue),
      Moon => New_Circle (0.0, 0.0, 2.0, White),
      Satellite => New_Circle (0.0, 0.0, 0.8, Red));

   Metrics : Star_Metric :=
     (Sun =>   (0.0, 0.0, 0.0),
      Earth => (0.005, 60.0, 0.0),
      Moon => (-0.03, 10.0, 0.0),
      Satellite => (0.07, 3.2, 0.0));

   Angle_Earth : Float := 0.0;
   Angle_Moon  : Float := 0.0;

begin
   loop
      for Obj in Earth..Satellite loop
         -- Xm = Re * cos(THETA_e) + Rm * cos(THETA_m)
         -- Xm = Rm * cos(THETA_m) + Rs * cos(THETA_s)
         Set_X(Stars(Obj),
               (Metrics(Obj, Distance) * Cos(Metrics(Obj, Angle))
                + Get_X(Stars(Star'Pred(Obj)))));

         Set_Y(Stars(Obj),
               (Metrics(Obj, Distance) * Sin(Metrics(Obj, Angle))
                + Get_Y(Stars(Star'Pred(Obj)))));

         Metrics(Obj, Angle) := Metrics(Obj, Angle) + Metrics(Obj, Speed);
      end loop;
      delay 0.01;
   end loop;
end Main;
