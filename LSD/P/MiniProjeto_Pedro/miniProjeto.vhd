library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity miniProjeto is
    port(
        clk      : in  std_logic;
        reset       : in  std_logic;
        enable      : in  std_logic;
        count       : out std_logic_vector(3 downto 0));
end entity;

architecture behavior of miniProjeto is
    signal s_count : unsigned(3 downto 0);
    signal s_en : std_logic;
begin
    process(clk, reset)
    begin
        if (reset = '1') then
            s_count <= (others => '0');
            s_en <= '0';
        elsif (rising_edge(clk)) then
            if (enable = '1' or s_en = '1') then
                if (s_count = 9) then
                    s_count <= (others => '0');
                else
                    s_count <= s_count + 1;
                end if;
            end if;
            s_en <= enable;
        end if;
    end process;

    count <= std_logic_vector(s_count);
end architecture;
