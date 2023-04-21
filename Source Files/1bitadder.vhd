library ieee;
use ieee.std_logic_1164.all;

entity full_adder is
  port( A: in std_logic;
        B: in std_logic;
        CIN: in std_logic;
        S: out std_logic;
        COUT: out std_logic
       );
end full_adder;

architecture full_adder_arch of full_adder is
begin
  S <= (A XOR B) XOR CIN;
  COUT <= (A AND B) OR (A AND CIN) OR (B AND CIN);
end full_adder_arch;