library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity CombShiftUnit is
	port(	dataIn: in std_logic_vector(7 downto 0);
			SHIFT_LEFT1 : in std_logic;
			SHIFT_RIGHT1 : in std_logic;
			ROTATE_LEFT1 : in std_logic;
			ROTATE_RIGHT1 : in std_logic;
			shcount: in std_logic_vector(2 downto 0);
			dataOut:out std_logic_vector(7 downto 0));
end CombShiftUnit;