library ieee;
use ieee.std_logic_1164.all;

entity ShiftRegister_Demo is
	generic(size2:positive:=8;
				divFactor2 : positive := 50_000_000);
	port( CLOCK_50: in std_logic;
			LEDR: out std_logic_vector(size2-1 downto 0);
			SW : in std_logic_vector(0 downto 0));
end ShiftRegister_Demo;

architecture b of ShiftRegister_Demo is 
signal s_clk_out: std_logic;
begin
	
	rel : entity work.ClkDividerN(Behavioral)
			generic map(divFactor =>divFactor2 )
			port map(clkOut => s_clk_out,
						clkIn=>CLOCK_50);
			
	c1: entity work.ShiftRegisterN(b)
		 generic map( size => size2)
		 port map(clk => s_clk_out,
					 data_out=> LEDR,
					 sin=>SW(0));
end b;