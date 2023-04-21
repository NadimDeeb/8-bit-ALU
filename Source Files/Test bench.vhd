library ieee;
use ieee.std_logic_1164.all;

entity testbench is
end testbench;

architecture testbench_arch of testbench is
  component implementation
    port( A: in std_logic_vector(7 downto 0);
        B: in std_logic_vector(7 downto 0);
        C: in std_logic_vector(3 downto 0);
        F: out std_logic_vector(15 downto 0)
      );
  end component;
  
  signal A: std_logic_vector(7 downto 0);
  signal B: std_logic_vector(7 downto 0);
  signal C: std_logic_vector(3 downto 0);
  signal F: std_logic_vector(15 downto 0);
  
  begin
    U: implementation port map(A=>A,B=>B,C=>C,F=>F);
    process
      begin
        C<="0000";A<="00000100";B<="00010000";wait for 10 ns; 
		              A<="00011100";B<="10110101";wait for 10 ns;
		              A<="10100001";B<="00001001";wait for 10 ns;
		              A<="11010100";B<="10111010";wait for 10 ns;
		
		    C<="0001";A<="00000100";B<="00010000";wait for 10 ns; 
		              A<="00011100";B<="10110101";wait for 10 ns;
		              A<="10100001";B<="00001001";wait for 10 ns;
		              A<="11010100";B<="10111010";wait for 10 ns;
		
	     	C<="0010";A<="00000100";B<="00010000";wait for 10 ns; 
		              A<="00011100";B<="10110101";wait for 10 ns;
		              A<="10100001";B<="00001001";wait for 10 ns;
		              A<="11010100";B<="10111010";wait for 10 ns;
		
		    C<="0011";A<="00000100";B<="00010000";wait for 10 ns; 
		              A<="00011100";B<="10110101";wait for 10 ns;
		              A<="10100001";B<="00001001";wait for 10 ns;
		              A<="11010100";B<="10111010";wait for 10 ns;
		              
		    C<="0100";A<="00000100";B<="00010000";wait for 10 ns; 
		              A<="00011100";B<="10110101";wait for 10 ns;
		              A<="10100001";B<="00001001";wait for 10 ns;
		              A<="11010100";B<="10111010";wait for 10 ns;
		              
		    C<="0101";A<="00000100";B<="00010000";wait for 10 ns; 
		              A<="00011100";B<="10110101";wait for 10 ns;
		              A<="11010100";B<="10111010";wait for 10 ns;
		              A<="10100001";B<="10100001";wait for 10 ns;
		              
		    C<="0110";A<="00000100";B<="00010000";wait for 10 ns; 
		              A<="00011100";B<="10110101";wait for 10 ns;
		              A<="11010100";B<="10111010";wait for 10 ns;
		              A<="00100001";B<="00100001";wait for 10 ns;
		              	  
		    C<="1000";A<="00000100";B<="00010000";wait for 10 ns; 
		              A<="00011101";B<="10110101";wait for 10 ns;
		              A<="10100001";B<="00001001";wait for 10 ns;
		              A<="11010100";B<="10111010";wait for 10 ns; 
		              
		    C<="1001";A<="00000100";B<="00010000";wait for 10 ns; 
		              A<="00011101";B<="10110101";wait for 10 ns;
		              A<="10100001";B<="00001001";wait for 10 ns;
		              A<="11010100";B<="10111010";wait for 10 ns;
		              
		    C<="1010";A<="00000100";B<="00010000";wait for 10 ns; 
		              A<="00011101";B<="10110101";wait for 10 ns;
		              A<="10100001";B<="00001001";wait for 10 ns;
		              A<="11010100";B<="10111010";wait for 10 ns;
		   
		    C<="1011";A<="00000100";B<="00010000";wait for 10 ns; 
		              A<="00011101";B<="10110101";wait for 10 ns;
		              A<="10100001";B<="00001001";wait for 10 ns;
		              A<="11010100";B<="10111010";wait for 10 ns;
		              
		    C<="1110";A<="00000100";B<="00010000";wait for 10 ns; 
		              A<="00011101";B<="10110101";wait for 10 ns;
		              A<="10100001";B<="00001001";wait for 10 ns;
		              A<="11010100";B<="10111010";wait for 10 ns;
 
 		    C<="1101";A<="00000100";B<="00010000";wait for 10 ns; 
		              A<="00011101";B<="10110101";wait for 10 ns;
		              A<="10100001";B<="00001001";wait for 10 ns;
		              A<="11010100";B<="10111010";wait for 10 ns;       
        wait;
    end process;
end testbench_arch;