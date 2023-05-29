library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity SortingUnit is
   generic (
      DATA_WIDTH : positive := 8;
      REGISTER_COUNT : positive := 5
   );
   port (
      clk         : in  std_logic;
      reset       : in  std_logic;
      input_data  : in  std_logic_vector(DATA_WIDTH*REGISTER_COUNT-1 downto 0);
      output_data : out std_logic_vector(DATA_WIDTH*REGISTER_COUNT-1 downto 0);
      enable      : in  std_logic
   );
end SortingUnit;

architecture Behavioral of SortingUnit is
   type register_bank_type is array (0 to REGISTER_COUNT-1) of std_logic_vector(DATA_WIDTH-1 downto 0);
   signal register_bank : register_bank_type;
   signal sorted_data : std_logic_vector(DATA_WIDTH*REGISTER_COUNT-1 downto 0);
   signal swapping : boolean := false;
begin
   process (clk)
      variable temp : std_logic_vector(DATA_WIDTH-1 downto 0);
   begin
      if rising_edge(clk) then
         if reset = '1' then
            register_bank <= (others => (others => '0'));
            sorted_data <= (others => '0');
            swapping <= false;
         elsif enable = '1' then
            if swapping = false then
               -- Read data from registers
               for i in 0 to REGISTER_COUNT-1 loop
                  register_bank(i) <= input_data((i+1)*DATA_WIDTH-1 downto i*DATA_WIDTH);
               end loop;
   
               -- Bubble sort algorithm (iterative)
               for i in 0 to REGISTER_COUNT-2 loop
                  if register_bank(i) > register_bank(i+1) then
                     temp := register_bank(i);
                     register_bank(i) := register_bank(i+1);
                     register_bank(i+1) := temp;
                     swapping <= true;
                  end if;
               end loop;
            else
               -- Continue swapping until sorted
               swapping <= false;
               for i in 0 to REGISTER_COUNT-2 loop
                  if register_bank(i) > register_bank(i+1) then
                     temp := register_bank(i);
                     register_bank(i) := register_bank(i+1);
                     register_bank(i+1) := temp;
                     swapping <= true;
                  end if;
               end loop;
            end if;
   
            -- Write sorted data to output and RAM
            sorted_data <= std_logic_vector(concatenate(register_bank(REGISTER_COUNT-1 downto 0)));
            output_data <= sorted_data;
         end if;
      end if;
   end process;
end Behavioral;
