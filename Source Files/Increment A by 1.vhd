library ieee;
use ieee.std_logic_1164.all;

entity incrementA is
  port( A: in std_logic_vector(7 downto 0);
        S: out std_logic_vector(15 downto 0)
       );
end incrementA;

architecture incrementA_arch of incrementA is
  component AplusB
    port( A: in std_logic_vector(7 downto 0);
          B: in std_logic_vector(7 downto 0);
          CIN: in std_logic;
          S: out std_logic_vector(15 downto 0)
         );
  end component;
begin
  U: AplusB port map(A=>A,B=>"00000001",CIN=>'0',S=>S);
end incrementA_arch;