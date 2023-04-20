library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity fase4 is
	port(KEY : in std_logic_vector(1 downto 0); 
			CLOCK_50 : in std_logic;
			LEDR : out std_logic_vector(3 downto 0);
			HEX0 : out std_logic_vector(6 downto 0)); 

end fase4;

architecture Behav of fase4 is
signal s_clk : std_logic; 
signal s_cnt_out : std_logic_vector(3 downto 0); 

begin
	pulse: work.divider(Behavioral)
				port map(clk_in => CLOCK_50,
								 reset => KEY(0),
								 clk_out =>s_clk);



	count: work.counter(Behav)
				port map(clk => s_clk,
								 reset => KEY(0),
								 enable => KEY(1),
								 cntOut =>s_cnt_out(3 downto 0));
								 
	bin: work.Bin7SegDecoder(Behavioral)
				port map(bininput => s_cnt_out(3 downto 0),
								 binoutput =>HEX0(6 downto 0));

	LEDR<= s_cnt_out;
end Behav ;