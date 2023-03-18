library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity RegN is
	generic(N : positive := 8);
	port(	dIn  : in std_logic_vector(N-1 downto 0);
			dOut : out std_logic_vector(N-1 downto 0);
			r,clk,enable : in std_logic);
end RegN;

architecture b of RegN is
begin 
	process(clk)
	begin 
		if rising_edge(clk) then
			if r = '1' then
				dOut <= (others => '0');
			elsif (enable = '1') then
				dOut <= dIn;
			end if;
		end if;
	end process;
end b;
				