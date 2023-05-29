library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity TopLevel is
   generic (
      DATA_WIDTH : positive := 8;
      REGISTER_COUNT : positive := 5;
      MAX_ADDRESS : positive := 256
   );
   port (
      clk  : in  std_logic;
      reset : in  std_logic;
      output_data : out std_logic_vector(DATA_WIDTH*REGISTER_COUNT-1 downto 0)
   );
end TopLevel;

architecture Behavioral of TopLevel is
   signal rom_data : std_logic_vector(DATA_WIDTH*MAX_ADDRESS-1 downto 0);
   signal pulse_gen_clk_out : std_logic;
   signal delay_line_output : std_logic_vector(DATA_WIDTH*REGISTER_COUNT-1 downto 0);
   signal sorted_data : std_logic_vector(DATA_WIDTH*REGISTER_COUNT-1 downto 0);
   signal control_enable : std_logic := '0';
   signal address : std_logic_vector(7 downto 0);
begin
   AddressGen_inst : entity work.AddressGenerator
      port map (
         clk => clk,
         reset => reset,
         address => address
      );

   ROM_inst : entity work.ROM
      generic map (
         DATA_WIDTH => DATA_WIDTH,
         MAX_ADDRESS => MAX_ADDRESS
      )
      port map (
         address => address,
         data_out => rom_data
      );

   PulseGen_inst : entity work.PulseGen
      generic map (
         MAX => MAX_ADDRESS
      )
      port map (
         clk_in => clk,
         reset => reset,
         clk_out => pulse_gen_clk_out
      );

   RAM_inst : entity work.RAM
      generic map (
         DATA_WIDTH => DATA_WIDTH,
         MAX_ADDRESS => MAX_ADDRESS
      )
      port map (
         clk => pulse_gen_clk_out,
         reset => reset,
         address => address,
         data_in => delay_line_output,
         write_enable => control_enable,
         data_out => rom_data  -- Connect RAM data_out to ROM data_in for feedback
      );

   DelayLine_inst : entity work.DelayLine
      generic map (
         DATA_WIDTH => DATA_WIDTH,
         REGISTER_COUNT => REGISTER_COUNT
      )
      port map (
         clk => pulse_gen_clk_out,
         reset => reset,
         input_data => rom_data,
         output_data => delay_line_output
      );

   SortingUnit_inst : entity work.SortingUnit
      generic map (
         DATA_WIDTH => DATA_WIDTH,
         REGISTER_COUNT => REGISTER_COUNT
      )
      port map (
         input_data => delay_line_output,
         output_data => sorted_data
      );

   ControlUnit_inst : entity work.ControlUnit
      generic map (
         DATA_WIDTH => DATA_WIDTH,
         REGISTER_COUNT => REGISTER_COUNT,
         MAX_ADDRESS => MAX_ADDRESS
      )
      port map (
         clk => pulse_gen_clk_out,
         reset => reset,
         start_filter => control_enable,
         input_data => delay_line_output,
         output_data => sorted_data
      );

   output_data <= sorted_data;

   process (clk)
   begin
      if rising_edge(clk) then
         if reset = '1' then
            control_enable <= '0';
         else
            control_enable <= '1';
         end if;
      end if;
   end process;
end Behavioral;
