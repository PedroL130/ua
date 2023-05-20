library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity DrinksFSM is
	port(reset : in std_logic;
			clk : in std_logic;
			c : in std_logic;
			v : in std_logic;
			Drinkout : out std_logic);
end DrinksFSM;

architecture Behavioral of DrinksFSM is

type TState is (s0,s1,s2,s3,s4,s5);
signal pState, nState: TState;

begin
	sync_proc : process(clk)
	begin
		if (rising_edge(clk)) then
			if (reset = '1') then
				pState <= S0;
			else
				pState <= nState;
			end if;
		end if;
end process;

comb_proc : process(pState, c,v)
begin
	nState <= pState;
		case pState is
			when s0 =>
				Drinkout <= '0';
				if (v = '1') then
					nState <= s1;
				elsif (c = '1') then
					nState <= s3;
				else 
					nState <= s0;
				end if;
			when s1 =>
				Drinkout <= '0';
				if (v = '1') then
					nState <= s2;
				elsif (c = '1') then
					nState <= s4;
				else
					nState <= s1;
				end if;
			when s2 =>
				Drinkout <= '0';
				if (v = '1') then
					nState <= s3;
				elsif (c = '1') then
					nState <= s5;
				else
					nState <= s2;
				end if;
			when s3 =>
				Drinkout <= '0';
				if (v = '1') then
					nState <= s4;
				elsif (c = '1') then
					nState <= s5;
				else
					nState <= s3;
				end if;
			when s4 =>
				Drinkout <= '0';
				if (v = '1' or c = '1') then
					nState <= s5;
				else
					nState <= s4;
				end if;
			when s5 =>
				Drinkout <= '0';
				nState <= s5;
		end case;
end process;
end Behavioral; 