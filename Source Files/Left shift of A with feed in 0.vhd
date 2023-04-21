library ieee;
use ieee.std_logic_1164.all;

entity fleftshift is
  port( A: in std_logic_vector(7 downto 0);
        Anew: out std_logic_vector(15 downto 0)
      );
end fleftshift;

architecture fleftshift_arch of fleftshift is
  component leftshift
    port( A: in std_logic_vector(7 downto 0);
          Anew: out std_logic_vector(15 downto 0)
        );
  end component;
begin
  U: leftshift port map(A=>A,Anew=>Anew);
    Anew(0) <= '0';
end fleftshift_arch;