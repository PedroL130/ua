library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity NAND2Gate is 
	port(inport0 : in std_logic;
		  inport1 : in std_logic;
		  outport : out std_logic);
end NAND2Gate;

architecture Structural of NAND2Gate is
	signal s_andout : std_logic;
begin
	and_gate : entity work.AND2Gate(Behavioral)
	port map(inport0 => inPort0,
			   inport1 => inPort1,
				outport => s_andout);
				
	not_gate : entity work.NOTGate(Behavioral)
				port map(inPort => s_andout,
							outPort => outPort);
end Structural;