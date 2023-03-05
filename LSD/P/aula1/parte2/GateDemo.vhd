library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity GateDemo is 
	port(SW : in std_logic_vector(1 downto 0);
		  LEDR : out std_logic_vector(1 downto 1));
end GateDemo;

architecture shell of GateDemo is
begin
	system_core : entity work.NAND2Gate(Structural)
							port map(inport0 => SW(0),
										inport1 => SW(1),
										outport => LEDR(1));
end shell;