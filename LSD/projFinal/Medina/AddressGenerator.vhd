library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity AddressGenerator is
   port(clk : in std_logic;
        reset : in std_logic;
        address : out std_logic_vector(7 downto 0));
end AddressGenerator;

architecture Behavioral of AddressGenerator is
   signal counter : integer range 0 to 119 := 0;
begin
   process(clk, reset)
   begin
      if reset = '1' then
         counter <= 0;
         address <= (others => '0');
      elsif rising_edge(clk) then
         if counter = 119 then
            counter <= 0;
         else
            counter <= counter + 1;
         end if;
         address <= std_logic_vector(to_unsigned(counter, 8));
      end if;
   end process;
end Behavioral;