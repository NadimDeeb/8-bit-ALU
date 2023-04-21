library ieee;
use ieee.std_logic_1164.all;

entity cleftshift is
  port( A: in std_logic_vector(7 downto 0);
        Anew: out std_logic_vector(15 downto 0)
      );
end cleftshift;

architecture cleftshift_arch of cleftshift is
  component leftshift
    port( A: in std_logic_vector(7 downto 0);
          Anew: out std_logic_vector(15 downto 0)
        );
  end component;
  
begin
  U: leftshift port map(A=>A,Anew=>Anew);
    Anew(0) <= A(7);
end cleftshift_arch;