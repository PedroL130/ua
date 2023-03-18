library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity pulseGen is
	port(	reset, clk : in std_logic;
			pulse   : out std_logic);
end pulseGen;
			


architecture b of pulseGen is
 signal s: natural :=0;
begin 
	process(clk)
	begin
		if rising_edge(clk) then
			if reset ='1' then
				pulse <= '0'; s<=0;
			else if s=250_000_000-1 then
				s<=0 ; pulse<='1';
				else 
				s<=s+1;
				end if;
			end if;
		end if;
	end process;
end b;