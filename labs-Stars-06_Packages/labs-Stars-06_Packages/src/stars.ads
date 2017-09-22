with Display;       use Display;
with Display.Basic; use Display.Basic;
with Ada.Numerics.Elementary_Functions; use Ada.Numerics.Elementary_Functions;


package Stars is

   type Star_Index is range 1 .. Integer'Last;
   type Star is record
      Speed        : Float;
      Distance     : Float;
      Angle        : Float;
      Graphic      : Shape_Id;
      Turns_Around : Star_Index := Star_Index'Last;
   end record;
   type Star_Array is array (Star_Index range <>) of Star;
   procedure Move_Around (The_Star : in out Star; Around : Star);
   function Create_Star
     (Size         : Float;
      Color        : Color_Type;
      Speed        : Float;
      Turns_Around : Star_Index;
      Distance     : Float)
      return         Star;

end Stars;
