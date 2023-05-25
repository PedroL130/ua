library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity pulseGen is
	generic (MAX : positive := 50_000_000);
	port (clk_in   : in std_logic;
		reset : in std_logic;
		clk_out : out std_logic);
end pulseGen;

architecture Behavioral of pulseGen is
	signal s_counter : natural;
begin
	process (clk_in)
	begin
		if (rising_edge(clk_in)) then
			clk_out <= '0';
			if (reset = '0') then
				s_counter <= 0;
			else
				s_counter <= s_counter + 1;
				if (s_counter = MAX - 1) then
					s_counter <= 0;
					clk_out <= '1';
				end if;
			end if;
		
		end if;
	end process;
end Behavioral;