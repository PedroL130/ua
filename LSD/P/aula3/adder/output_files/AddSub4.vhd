library ieee;
use ieee.std_logic_1164.all;

entity AddSub4 is
	port( a,b : in std_logic_vector(3 downto 0);
			s : out std_logic_vector(3 downto 0);
			cin : in std_logic;
			cout : out std_logic);
end AddSub4;

architecture structural of AddSub4 is
	signal s_b : std_logic_vector(3 downto 0);
begin 
	
	s_b <= b when (sub = '0') else not b;
	entity work.Adder4(structural);
	
end structural;
						