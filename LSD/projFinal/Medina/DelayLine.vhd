library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity DelayLine is
   generic (
      DATA_WIDTH : positive := 8;
      REGISTER_COUNT : positive := 5
   );
   port (
      clk     : in  std_logic;
      reset   : in  std_logic;
      serial_in : in  std_logic_vector(DATA_WIDTH-1 downto 0);
      parallel_out : out std_logic_vector(DATA_WIDTH*REGISTER_COUNT-1 downto 0)
   );
end DelayLine;

architecture Behavioral of DelayLine is
   type register_bank_type is array (0 to REGISTER_COUNT-1) of std_logic_vector(DATA_WIDTH-1 downto 0);
   signal register_bank : register_bank_type;
begin
   process (clk)
   begin
      if rising_edge(clk) then
         if reset = '1' then
            register_bank <= (others => (others => '0'));
         else
            register_bank(REGISTER_COUNT-1) <= serial_in;
            for i in REGISTER_COUNT-2 downto 0 loop
               register_bank(i) <= register_bank(i+1);
            end loop;
         end if;
      end if;
   end process;

   parallel_out <= std_logic_vector(concatenate(register_bank(REGISTER_COUNT-1 downto 0)));
end Behavioral;
