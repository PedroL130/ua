library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity ROM_16_8 is
	port(address : in std_logic_vector(3 downto 0);
			dataOut : out std_logic_vector(7 downto 0));
end ROM_16_8;

architecture Behavioral of ROM_16_8 is

	subtype TDataWord is std_logic_vector(7 downto 0);
	type TROM is array (0 to 15) of TDataWord;
	constant c_memory: TROM := (
        -- Initialize the ROM content here
        "00000000",
        "00000001",
        "00000010",
        "00000011",
        "00000100",
        "00000101",
        "00000110",
        "00000111",
        "00001000",
        "00001001",
        "00001010",
        "00001011",
        "00001100",
        "00001101",
        "00001110",
        "00001111"
    );
	
begin

	dataOut <= c_memory(to_integer(unsigned(address)));
	
end Behavioral;