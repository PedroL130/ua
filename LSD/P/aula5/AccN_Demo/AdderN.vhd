library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity AdderN is
	generic(N : positive :=8);
	port(	op0 : in std_logic_vector (N-1 downto 0);
			op1 : in std_logic_vector (N-1 downto 0);
			rs  : out std_logic_vector (N-1 downto 0));
end AdderN;

architecture behavioral of AdderN is

signal op0_s , op1_s , rs_s : unsigned(N-1 downto 0);

begin 
	op0_s <= '0' & unsigned(op0);
	op1_s <= '0' & unsigned(op1);
	rs_s  <= op0_s + op1_s;
	rs    <= std_logic_vector(rs_s(N - 1 downto 0));

end behavioral;