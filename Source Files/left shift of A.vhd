library ieee;
use ieee.std_logic_1164.all;

entity leftshift is
  port( A: in std_logic_vector(7 downto 0);
        Anew: out std_logic_vector(15 downto 0)
      );
end leftshift;
      
architecture leftshift_arch of leftshift is
begin
  g1: for j in 0 to 6 generate
    Anew(j+1) <= A(j);
  end generate;
  g2: for j in 8 to 15 generate
    Anew(j)<=A(6);
  end generate;
end leftshift_arch;