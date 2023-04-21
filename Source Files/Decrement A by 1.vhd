library ieee;
use ieee.std_logic_1164.all;

entity decrementA is
  port( A: in std_logic_vector(7 downto 0);
        S: out std_logic_vector(15 downto 0)
       );
end decrementA;

architecture decrementA_arch of decrementA is
  component AminusB
    port( A: in std_logic_vector(7 downto 0);
          B: in std_logic_vector(7 downto 0);
          S: out std_logic_vector(15 downto 0)
        );
  end component;
  begin
    U: AminusB port map(A=>A,B=>"00000001",S=>S);
end decrementA_arch;