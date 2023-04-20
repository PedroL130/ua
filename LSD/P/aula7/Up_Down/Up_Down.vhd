library ieee;
use ieee.std_logic_1164.all;
use ieee.NUMERIC_STD.all;

entity Up_Down is
	port( clk, reset, enable,up: in std_logic;
			output : out std_logic_vector(3 downto 0));
end Up_Down;

architecture b of Up_Down is

signal s_cnt : unsigned(3 downto 0);
begin
process(clk)
begin
	if (rising_edge(clk)) then
		if (reset = '1') then
		s_cnt <= (others => '0');
		elsif (enable = '1') then
			if (up = '1') then
			s_cnt <= s_cnt + 1;
			else
			s_cnt <= s_cnt - 1;
			end if;
		end if;
	end if;
	output<=std_logic_vector(s_cnt);
	
end process;
end b;