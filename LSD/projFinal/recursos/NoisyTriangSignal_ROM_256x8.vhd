library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity NoisyTriangSignal_ROM_256x8 is
   port(address : in  std_logic_vector(7 downto 0);
        dataOut : out std_logic_vector(7 downto 0));
end NoisyTriangSignal_ROM_256x8;

architecture Behavioral of NoisyTriangSignal_ROM_256x8 is
   subtype TDataWord is std_logic_vector(7 downto 0);
   type TROM is array (0 to 255) of TDataWord;
	-- Input Signal ROM
   constant c_memory: TROM := (
	"10110011",
	"10001110",
	"10111100",
	"10101101",
	"10110110",
	"10100000",
	"10101110",
	"10110100",
	"10111110",
	"10101101",
	"11000101",
	"10111000",
	"11000111",
	"11010000",
	"11010000",
	"11011010",
"11011101",
"11010000",
"11011100",
"11010100",
"11010011",
"11101100",
"11100110",
"11101001",
"11110110",
"11110110",
"11110111",
"00000010",
"00000011",
"11111111",
"11111001",
"11111101",
"00010010",
"11111010",
"00001101",
"11111101",
"00011101",
"00011111",
"00011010",
"00011100",
"00001000",
"00101001",
"00010001",
"00010011",
"00101110",
"00100111",
"00110111",
"00111101",
"01000010",
"00110110",
"01000100",
"01000100",
"01001110",
"01001111",
"01010101",
"01001111",
"01010010",
"01100000",
"01000101",
"01011000",
"01010100",
"01011001",
"01100000",
"01011110",
"01001001",
"01001011",
"01001110",
"01000111",
"01001001",
"01000111",
"00110111",
"00111011",
"00100101",
"01000001",
"00101101",
"00100100",
"00101010",
"00011100",
"00100110",
"00011110",
"00110101",
"00101000",
"00000010",
"00011011",
"00000110",
"00001110",
"00001110",
"00010001",
"00000100",
"00010010",
"11111011",
"00000000",
"00000000",
"11110111",
"11111100",
"11110011",
"11100101",
"11011000",
"11111000",
"11011101",
"11100001",
"11100010",
"11011011",
"11001110",
"11001111",
"11001111",
"11011011",
"11000001",
"11001110",
"11000110",
"10111110",
"10110011",
"10110111",
"10110110",
"10100101",
"10110010",
"10100101",
"10101001",
"10101010",
"10011011",
"10011101",
"10100111",
"10010101",
"10110100",
"11000100",
"10111001",
"10110000",
"10111011",
"10110000",
"11001111",
"11001001",
"11001011",
"10111110",
"11001101",
"11000111",
"11001101",
"11001110",
"11001101",
"11010001",
"11011011",
"11010000",
"11101001",
"11100101",
"11110000",
"11101111",
"11110101",
"11100101",
"11101101",
"11110101",
"11111110",
"00001011",
"00000000",
"00010011",
"00001110",
"00011000",
"00010001",
"00001101",
"00001000",
"00011011",
"00100101",
"00011101",
"00011110",
"00100011",
"00011111",
"00101000",
"00101110",
"00110100",
"00110110",
"00111111",
"00111110",
"01010001",
"01000110",
"01011000",
"01000011",
"01010010",
"01001110",
"01011001",
"01011100",
"01000101",
"01010000",
"01010010",
"01100001",
"01101000",
"01010011",
"01011011",
"01010101",
"01000011",
"01001101",
"00111111",
"01010010",
"01000000",
"01001101",
"00110110",
"00111100",
"00110011",
"00011101",
"00100011",
"00101111",
"00100110",
"00011000",
"00011010",
"00011111",
"00010000",
"00100000",
"00001101",
"00100001",
"00000010",
"00001100",
"11111000",
"11111100",
"11111010",
"00000001",
"00000011",
"11111001",
"11110000",
"11111000",
"11110100",
"11101011",
"11101100",
"11100111",
"11010111",
"11100100",
"11010011",
"11010001",
"11010101",
"11001101",
"11001100",
"11001111",
"11010000",
"11000001",
"11000011",
"10111011",
"10111100",
"10111011",
"10101101",
"10110011",
"10110011",
"10101010",
"10110111",
"10011101",
"10011001",
"10010010",
"10101111",
"10110010",
"10101100",
"10111001",
"10110101",
"10111001",
"10111011",
"11000001",
"11000001",
"11011110",
"10111011",
"10111000",
"11000010",
"11000110");

begin
   dataOut <= c_memory(to_integer(unsigned(address)));
end Behavioral;