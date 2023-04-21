library ieee;
use ieee.std_logic_1164.all;

entity AminusB is
  port( A: in std_logic_vector(7 downto 0);
        B: in std_logic_vector(7 downto 0);
        S: out std_logic_vector(15 downto 0)
       );
end AminusB;

architecture AminusB_arch of AminusB is
  component inverter
    port( A: in std_logic;
          AN: out std_logic
         );
  end component;
  
  component AplusB
    port( A: in std_logic_vector(7 downto 0);
          B: in std_logic_vector(7 downto 0);
          CIN: in std_logic;
          S: out std_logic_vector(15 downto 0)
         );
  end component;
  signal BN: std_logic_vector(7 downto 0);
begin
  g1: for j in 0 to 7 generate
    U1: inverter port map(A=>B(j),AN=>BN(j));
  end generate;
  U2: AplusB port map(A=>A,B=>BN,CIN=>'1',S=>S);
end AminusB_arch;