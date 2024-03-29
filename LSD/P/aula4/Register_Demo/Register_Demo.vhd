library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Register_Demo is
	port(  clk : in std_logic;
			 d : in std_logic_vector(7 downto 0);
			 set : in std_logic;
			 reset : in std_logic;
			 q : out std_logic_vector(7 downto 0));
end Register_Demo;

architecture Behavioral of Register_Demo is
begin
	 process(clk)
	 begin
			if (reset = '1') then
				 q <= "00000000";
			elsif (rising_edge(clk)) then
				if (set='1') then
					 q <= d;
				end if;
			end if;
	 end process;
end Behavioral;