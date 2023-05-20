library IEEE;
use IEEE.STD_LOGIC_1164.all;

-- Entidade sem portos
entity DrinksMachineTest is
end DrinksMachineTest;

architecture Stimulus of DrinksMachineTest is

-- Sinais para ligar às entradas da uut
signal s_reset : std_logic;
signal s_clk,s_c,s_v : std_logic;

-- Sinal para ligar às saídas da uut
signal s_Drinkout : std_logic;

begin
-- Instanciação da Unit Under Test (UUT)
	uut: entity work.DrinksFSM(Behavioral)
		port map(reset => s_reset,
					clk => s_clk,
					c => s_c,
					v => s_v,
					Drinkout => s_Drinkout);
					
--Process stim

clock_proc : process
begin
s_clk <= '0'; 
wait for 100 ns;
s_clk <= '1'; 
wait for 100 ns;
end process;

stim_proc : process
	begin
		s_reset <='1';
	wait for 105 ns;
		s_reset<= '0';
	wait for 25 ns;
		s_reset <= '1';
	
	end process;
end Stimulus;
