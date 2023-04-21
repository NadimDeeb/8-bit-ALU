library ieee;
use ieee.std_logic_1164.all;

entity rightshift is
  port( A: in std_logic_vector(7 downto 0);
        Anew: out std_logic_vector(15 downto 0)
      );
end rightshift;
      
architecture rightshift_arch of rightshift is
begin
  g1: for j in 0 to 6 generate
    Anew(j) <= A(j+1);
  end generate;
end rightshift_arch;