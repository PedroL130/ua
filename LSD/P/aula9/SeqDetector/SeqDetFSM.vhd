library ieee;
use ieee.std_logic_1164.all;

entity SeqDetFSM is
	port(reset : in std_logic;
			clk : in std_logic;
			xIn : in std_logic;
			zOut : out std_logic);
end;

architecture b of SeqDetFSM is 
	type state is (a,b,c,d);
	signal Ns,Ps : state;
begin
	sync_proc: process(clk)
	begin
		if (rising_edge(clk)) then
			if (reset = '1') then
				Ps <= a;
			else 
				Ps <= Ns;
			end if;
		end if;
	end process;
	
	comb_proc : process(Ps,xIn)
	begin
		zOut <= '0';
		
		case Ps is
			when a =>
				if (xIn = '1') then 
					Ns <= b;
				else
					Ns <= a;
				end if;
			when b =>
				if (xIn = '0') then 
					Ns <= c;
				else
					Ns <= b;
				end if;
			when c =>
				if (xIn = '0') then 
					Ns <= d;
				else
					Ns <= b;
				end if;
			when d =>
				if (xIn = '1') then 
					zOut <= '1';
					Ns <= b;
				else
					Ns <= a;
				end if;
			when others =>
				Ns <= a;
		end case;
	end process;
end b;
			
			