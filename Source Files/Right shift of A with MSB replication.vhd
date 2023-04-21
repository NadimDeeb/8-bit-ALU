library ieee;
use ieee.std_logic_1164.all;

entity rrightshift is
  port( A: in std_logic_vector(7 downto 0);
        Anew: out std_logic_vector(15 downto 0)
      );
end rrightshift;

architecture rrightshift_arch of rrightshift is
  component rightshift
    port( A: in std_logic_vector(7 downto 0);
          Anew: out std_logic_vector(15 downto 0)
        );
  end component;

begin
  U: rightshift port map(A=>A,Anew=>Anew);
  g1: for j in 7 to 15 generate
    Anew(j)<=A(7);
  end generate;
end rrightshift_arch;