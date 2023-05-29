library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity MedianFilter is
   generic (
      N : positive := 256
   );
   port (
      clk     : in  std_logic;
      reset   : in  std_logic;
      x       : in  std_logic_vector(N-1 downto 0);
      y       : out std_logic_vector(N-1 downto 0)
   );
end MedianFilter;

architecture Behavioral of MedianFilter is
   signal samples : std_logic_vector(4 downto 0);
   signal sorted_samples : std_logic_vector(4 downto 0);
begin
   process (clk)
   begin
      if rising_edge(clk) then
         if reset = '1' then
            samples <= (others => '0');
         else
            samples <= x(N-1 downto N-5);
            sorted_samples <= std_logic_vector(to_unsigned(unsigned(samples), 5));
            for i in 0 to 2 loop
               for j in i+1 to 3 loop
                  if sorted_samples(j) < sorted_samples(i) then
                     sorted_samples(i) <= sorted_samples(j);
                     sorted_samples(j) <= sorted_samples(i);
                  end if;
               end loop;
            end loop;
            y <= sorted_samples;
         end if;
      end if;
   end process;
end Behavioral;
