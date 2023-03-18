library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity AccN is
	generic(N : positive := 8);
	port(	dIn  : in std_logic_vector(N-1 downto 0);
			dOut : out std_logic_vector(N-1 downto 0);
			r,clk,enable : in std_logic);
end AccN;

architecture shell of AccN is
	signal s_rOut, s_aOut : unsigned(N-1 downto 0);
begin
	add : entity Work.AdderN(behavioral)
			generic map(N => N)
			port map( op0 => dIn,
						 op1 => s_rOut,
						 rs  => s_aOut(N-1 downto 0));

						 
	reg : entity Work.RegN(b)
			generic map(N => N)
			port map( dIn  => s_aOut(N-1 downto 0),
						 dOut => s_rOut(N-1 downto 0),
						 r    => r,
						 enable => enable,
						 clk => clk);
end shell;
			
			
