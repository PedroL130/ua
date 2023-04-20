library ieee;
use ieee.std_logic_1164.all;

entity ShiftRegister4 is 
	port( clk: in std_logic;
			data_out: out std_logic_vector(3 downto 0);
			sin : in std_logic);
end ShiftRegister4;

architecture b of ShiftRegister4 is
signal s_shift : std_logic_vector(3 downto 0) := (others=>'0');
	begin 
		process(clk)
			begin
				if (rising_edge(clk)) then
					s_shift <= s_shift(2 downto 0) & sin;
				end if;
		end process;
		data_out<=s_shift;
end b;