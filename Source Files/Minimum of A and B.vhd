library ieee;
use ieee.std_logic_1164.all;

entity minAB is
  port( A: in std_logic_vector(7 downto 0);
        B: in std_logic_vector(7 downto 0);
        F: out std_logic_vector(15 downto 0)
      );
end minAB;

architecture minAB_arch of minAB is
  component AminusB
    port( A: in std_logic_vector(7 downto 0);
          B: in std_logic_vector(7 downto 0);
          S: out std_logic_vector(15 downto 0)
        );
  end component;
  signal S:std_logic_vector(15 downto 0);
  signal Fs:std_logic_vector(7 downto 0);
begin
  U: AminusB port map (A=>A,B=>B,S=>S);
  process(A,B,S,Fs)
    begin
    if(A(7)='1' AND B(7)='0') then Fs<=A;
    elsif(A(7)='0' AND B(7)='1') then Fs<=B;
    else
      if(S(7)='0') then Fs<=B;
      else Fs<=A;
      end if;
    end if;
    
    for j in 7 downto 0 loop
      F(j)<=Fs(j);
    end loop;
    for j in 15 downto 8 loop
      F(j)<=Fs(7);
    end loop;
  end process;
end minAB_arch;