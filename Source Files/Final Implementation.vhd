library ieee;
use ieee.std_logic_1164.all;

entity implementation is
  port( A: in std_logic_vector(7 downto 0);
        B: in std_logic_vector(7 downto 0);
        C: in std_logic_vector(3 downto 0);
        F: out std_logic_vector(15 downto 0)
      );
end implementation;

architecture implementation_arch of implementation is
  component AplusB
    port( A: in std_logic_vector(7 downto 0);
          B: in std_logic_vector(7 downto 0);
          CIN: in std_logic;
          S: out std_logic_vector(15 downto 0)
        );
  end component;
  component incrementA
    port( A: in std_logic_vector(7 downto 0);
          S: out std_logic_vector(15 downto 0)
        );
  end component;
  component AminusB
    port( A: in std_logic_vector(7 downto 0);
          B: in std_logic_vector(7 downto 0);
          S: out std_logic_vector(15 downto 0)
        );
  end component;
  component decrementA
    port( A: in std_logic_vector(7 downto 0);
          S: out std_logic_vector(15 downto 0)
        );
  end component;
  
  component vmul8x8p
    port( X: in std_logic_vector(7 downto 0);
          Y: in std_logic_vector(7 downto 0);
          P: out std_logic_vector(15 downto 0)
        );
  end component;
  
  component minAB
    port( A: in std_logic_vector(7 downto 0);
          B: in std_logic_vector(7 downto 0);
          F: out std_logic_vector(15 downto 0)
        );
  end component;
  component maxAB
    port( A: in std_logic_vector(7 downto 0);
          B: in std_logic_vector(7 downto 0);
          F: out std_logic_vector(15 downto 0)
        );
  end component;
  
  component crightshift
    port( A: in std_logic_vector(7 downto 0);
          Anew: out std_logic_vector(15 downto 0)
        );
  end component;
  component cleftshift
    port( A: in std_logic_vector(7 downto 0);
          Anew: out std_logic_vector(15 downto 0)
        );
  end component;
  component frightshift
    port( A: in std_logic_vector(7 downto 0);
          Anew: out std_logic_vector(15 downto 0)
        );
  end component;
  component fleftshift
    port( A: in std_logic_vector(7 downto 0);
          Anew: out std_logic_vector(15 downto 0)
        );
  end component;
  component rrightshift
    port( A: in std_logic_vector(7 downto 0);
          Anew: out std_logic_vector(15 downto 0)
        );
  end component;
  component rleftshift
    port( A: in std_logic_vector(7 downto 0);
          Anew: out std_logic_vector(15 downto 0)
        );
  end component;
  
signal F1,F2,F3,F4,F5,F6,F7:std_logic_vector(15 downto 0);
signal F8,F9,F10,F11,F12,F13:std_logic_vector(15 downto 0);



begin
  U1 : AplusB port map(A=>A,B=>B,CIN=>'0',S=>F1);
  U2 : incrementA port map(A=>A,S=>F2);
  U3 : AminusB port map(A=>A,B=>B,S=>F3);
  U4 : decrementA port map(A=>A,S=>F4);
  U5 : vmul8x8p port map(X=>A,Y=>B,P=>F5);
  U6 : minAB port map(A=>A,B=>B,F=>F6);
  U7 : maxAB port map(A=>A,B=>B,F=>F7);
  U8 : crightshift port map(A=>A,Anew=>F8);
  U9 : cleftshift port map(A=>A,Anew=>F9);
  U10 : frightshift port map(A=>A,Anew=>F10);
  U11 : fleftshift port map(A=>A,Anew=>F11);
  U12 : rrightshift port map(A=>A,Anew=>F12);
  U13 : rleftshift port map(A=>A,Anew=>F13);
  
  with C select F <=
  F1 when "0000",
  F2 when "0001",
  F3 when "0010",
  F4 when "0011",
  F5 when "0100",
  F6 when "0101",
  F7 when "0110",
  F8 when "1000",
  F9 when "1001",
  F10 when "1010",
  F11 when "1011",
  F12 when "1110",
  F13 when "1101",
  (others=>'0') when others;

end implementation_arch;