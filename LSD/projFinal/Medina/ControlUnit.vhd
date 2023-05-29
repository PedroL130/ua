library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity ControlUnit is
   generic (
      DATA_WIDTH : positive := 8;
      REGISTER_COUNT : positive := 5
   );
   port (
      clk            : in  std_logic;
      reset          : in  std_logic;
      start          : in  std_logic;
      output_enable  : out std_logic;
      ram_reset      : out std_logic;
      filter_enable  : out std_logic
   );
end ControlUnit;

architecture Behavioral of ControlUnit is
   type state_type is (RESET_RAM, FILTERING);
   signal current_state : state_type;
begin
   process (clk, reset)
   begin
      if reset = '1' then
         current_state <= RESET_RAM;
         ram_reset <= '1';
         filter_enable <= '0';
         output_enable <= '0';
      elsif rising_edge(clk) then
         case current_state is
            when RESET_RAM =>
               if start = '1' then
                  current_state <= FILTERING;
                  ram_reset <= '0';
                  filter_enable <= '1';
                  output_enable <= '1';
               else
                  current_state <= RESET_RAM;
                  ram_reset <= '1';
                  filter_enable <= '0';
                  output_enable <= '0';
               end if;
            when FILTERING =>
               current_state <= FILTERING;
               ram_reset <= '0';
               filter_enable <= '1';
               output_enable <= '1';
         end case;
      end if;
   end process;
end Behavioral;
