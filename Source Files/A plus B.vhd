library ieee;
use ieee.std_logic_1164.all;

entity AplusB is
  port( A: in std_logic_vector(7 downto 0);
        B: in std_logic_vector(7 downto 0);
        CIN: in std_logic;
        S: out std_logic_vector(15 downto 0)
       );
end AplusB;

architecture AplusB_arch of AplusB is
  component full_adder
    port( A: in std_logic;
          B: in std_logic;
          CIN: in std_logic;
          S: out std_logic;
          COUT: out std_logic
         );
   end component;
  signal C: std_logic_vector(0 to 8);
  signal s7:std_logic;
  
begin
  C(0) <= CIN;
  g1: for j in 0 to 6 generate
    U: full_adder port map(A=>A(j),B=>B(j),CIN=>C(j),S=>S(j),COUT=>C(j+1));
  end generate;
  U: full_adder port map(A=>A(7),B=>B(7),CIN=>C(7),S=>s7,COUT=>C(8));
  g2: for k in 7 to 15 generate
   S(k)<=s7;
  end generate;

end AplusB_arch;