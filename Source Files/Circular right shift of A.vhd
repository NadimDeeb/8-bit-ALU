library ieee;
use ieee.std_logic_1164.all;

entity crightshift is
  port( A: in std_logic_vector(7 downto 0);
        Anew: out std_logic_vector(15 downto 0)
      );
end crightshift;

architecture crightshift_arch of crightshift is
  component rightshift
    port( A: in std_logic_vector(7 downto 0);
          Anew: out std_logic_vector(15 downto 0)
        );
  end component;

begin
  U: rightshift port map(A=>A,Anew=>Anew);
  g1: for j in 7 to 15 generate
    Anew(j)<=A(0);
  end generate;
end crightshift_arch;