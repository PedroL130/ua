library ieee;
use ieee.std_logic_1164.all;

entity Adder4 is
	port( a,b : in std_logic_vector(3 downto 0);
			s : out std_logic_vector(3 downto 0);
			cin : in std_logic;
			cout : out std_logic);
end Adder4;

architecture structural of Adder4 is
 signal carryOut : std_logic_vector(3 downto 0);
begin 
	bit0 : entity work.fulladder(behavioral)
			port map( a => a(0),
						b =>b(0),
						cin => cin,
						s => s(0),
						cout => carryOut(0));
	bit1: entity work.fulladder(behavioral) 
  port map(a => a(1), 
           b => b(1), 
           cin => carryOut(0), 
           s => s(1), 
           cout => carryOut(1)); 

  bit2: entity work.fulladder(behavioral) 
  port map(a => a(2), 
           b => b(2), 
           cin => carryOut(1), 
           s => s(2), 
           cout => carryOut(2)); 

  bit3: entity work.fulladder(behavioral) 
  port map(a => a(3), 
           b => b(3), 
           cin => carryOut(2), 
           s => s(3), 
           cout => cout); 
			  
end structural;
						