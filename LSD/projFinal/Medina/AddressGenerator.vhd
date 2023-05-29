library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity AddressGenerator is
   port (
      clk     : in  std_logic;
      enable  : in  std_logic;
      address : out std_logic_vector(7 downto 0)
   );
end AddressGenerator;

architecture Behavioral of AddressGenerator is
   signal counter : unsigned(7 downto 0);
begin
   process(clk)
   begin
      if rising_edge(clk) then
         if enable = '1' then
            counter <= counter + 1;
         end if;
      end if;
   end process;

   address <= std_logic_vector(counter);
end Behavioral;

