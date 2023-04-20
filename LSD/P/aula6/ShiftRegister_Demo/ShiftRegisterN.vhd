library ieee;
use ieee.std_logic_1164.all;

entity ShiftRegisterN is 
	generic(size : positive := 4);
	port( clk: in std_logic;
			data_out: out std_logic_vector(size-1 downto 0);
			sin : in std_logic);
end ShiftRegisterN;

architecture b of ShiftRegisterN is
signal s_shift : std_logic_vector(size-1 downto 0) := (others=>'0');
	begin 
		process(clk)
			begin
				if (rising_edge(clk)) then
					s_shift <= s_shift(size-2 downto 0) & sin;
				end if;
		end process;
		data_out<=s_shift;
end b;