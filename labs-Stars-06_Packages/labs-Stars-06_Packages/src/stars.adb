with Display;       use Display;
with Display.Basic; use Display.Basic;

package body Stars is

   procedure Move_Around (The_Star : in out Star; Around : Star) is
   begin
      The_Star.Angle := The_Star.Angle + The_Star.Speed;

      Set_X
        (The_Star.Graphic,
         Get_X (Around.Graphic) + Cos (The_Star.Angle) * The_Star.Distance);
      Set_Y
        (The_Star.Graphic,
         Get_Y (Around.Graphic) + Sin (The_Star.Angle) * The_Star.Distance);
   end Move_Around;

   function Create_Star
     (Size         : Float;
      Color        : Color_Type;
      Speed        : Float;
      Turns_Around : Star_Index;
      Distance     : Float)
      return         Star
   is
      Result : Star;
   begin
      Result.Graphic      := New_Circle (0.0, 0.0, Size, Color);
      Result.Speed        := Speed;
      Result.Angle        := 0.0;
      Result.Turns_Around := Turns_Around;
      Result.Distance     := Distance;

      return Result;
   end Create_Star;
end Stars;
