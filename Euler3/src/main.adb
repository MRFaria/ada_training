-- The prime factors of 13195 are 5, 7, 13 and 29.
-- What is the largest prime factor of the number 600851475143 ?
with Ada.Assertions;  use Ada.Assertions;
with Ada.Containers.Vectors;
procedure Main is
   type Natural is range 1 .. Long_Long_Integer'Last;
   package Container is new Ada.Containers.vectors (natural, natural);
  -- type PrimeFactors is array(Natural range <>) of Long_Long_Integer'Last;

   function CalcPrimeFactors(Number: in Natural) return Boolean is
   begin
      loop
         if isPrime(NextNumber) then
            loop
               if (Number rem NextNumber) = 0 then
                  Number := Number / nextnumber
               end if;
            end loop:
         end if;
         nextnumber := nextnumber + 1;

      end loop;


   end isPrime;

   --function CalcPrimeFactors(Number: in Natural) return PrimeFactors is
   --begin
--
  --    return (2, 3);
   --end CalcPrimeFactors;
begin
   Assert(isPrime(600_851_475_143) = False, "FAILED");


   --Assert(CalcPrimeFactors(13195) = (5, 7, 13, 29), "FAILED");
end Main;
