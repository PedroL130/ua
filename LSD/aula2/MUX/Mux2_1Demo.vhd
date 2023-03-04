library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Mux2_1Demo is
	port(sel : in std_logic;
			input0 : in std_logic;
			input1 : in std_logic;
			muxOut : out std_logic);
end Mux2_1Demo;


architecture Equations of Mux2_1Demo is
signal s_and0Out, s_and1Out : std_logic;
begin
		s_and0Out <= not sel and input0;
		s_and1Out <= sel and input1;
		muxOut <= s_and0Out or s_and1Out;
end Equations;