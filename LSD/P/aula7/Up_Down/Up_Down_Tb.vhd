library IEEE;
use IEEE.STD_LOGIC_1164.all;

-- Entidade sem portos
entity Up_Down_Tb is
end Up_Down_Tb;

architecture Stimulus of Up_Down_Tb is

 -- Sinais para ligar às entradas da UUT
 signal s_enable, s_clk, s_reset,s_up : std_logic;

 -- Sinal para ligar às saídas da UUT
 signal s_outputs : std_logic_vector(3 downto 0);
 
begin
	 -- Instanciação da Unit Under Test (UUT)
	 uut: entity work.Up_Down(b)
				 port map(enable => s_enable,
							 clk=>s_clk,
							 reset=>s_reset,
							 up=>s_up,
							 output => s_outputs);
							 
	clk_proc: process
				begin 
					s_clk <='0';
					wait for 100 ns;
					s_clk <='1';
					wait for 100 ns;
				end process;
				

 --Process stim
 stim_proc : process
 begin
	s_reset <= '1';
	 wait for 200 ns;--esperar que o reset atue, para comecar a contar no 0
	 s_reset <= '0';
	 s_enable <= '1';
	  s_up <= '1';
	 wait for 400 ns;--esperar pelo ciclo do relogio
	 s_up <= '1';
	 wait for 100 ns;
	 s_reset <= '1';
	 wait for 100 ns;
 end process;
end Stimulus; 