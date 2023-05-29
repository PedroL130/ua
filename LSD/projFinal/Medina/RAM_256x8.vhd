library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity RAM_256x8 is
   port (
      clk     : in  std_logic;
      address : in  std_logic_vector(7 downto 0);
      dataIn  : in  std_logic_vector(7 downto 0);
      enable  : in  std_logic;
      dataOut : out std_logic_vector(7 downto 0)
   );
end RAM_256x8;

architecture Behavioral of RAM_256x8 is
   type TDataWord is std_logic_vector(7 downto 0);
   type TMemory is array (0 to 255) of TDataWord;
   signal memory : TMemory;
begin
   process (clk)
   begin
      if rising_edge(clk) then
         if enable = '1' then
            memory(to_integer(unsigned(address))) <= dataIn;
         end if;
      end if;
   end process;

   dataOut <= memory(to_integer(unsigned(address)));
end Behavioral;
