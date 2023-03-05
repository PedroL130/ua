library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity PEnc4_2Demo is
port( validOut : out std_logic_vector (0 downto 0);
		decodedIn : in std_logic_vector (3 downto 0);
		encodedOut : out std_logic_vector (1 downto 0));
end PEnc4_2Demo;

architecture Behavioral of PEnc4_2Demo is
begin
process(decodedIn)
begin
		
		if (decodedIn="0000") then
			validOut <= "1";
		elsif (decodedIn="1000") then
			encodedOut <= "00";
		elsif (decodedIn="0100") then
			encodedOut <= "01";
		elsif (decodedIn="0010") then
			encodedOut <= "10";
		elsif (decodedIn="0001") then
			encodedOut <= "11";
		else
			encodedOut <= "ZZ";
		end if;
		 
end process;

end Behavioral;
