
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Error_Decoder_LED is

    Port ( inp : in  STD_LOGIC_VECTOR (15 downto 0);
				nodata:in  STD_LOGIC;
           LED : out  STD_LOGIC_VECTOR (1 downto 0));

end Error_Decoder_LED;

architecture Behavioral of Error_Decoder_LED is

signal realdata:STD_LOGIC_VECTOR (2 downto 0):="000";

begin
process(inp)


	begin
	
	
	realdata<=inp(12)&inp(11)&inp(10);
	if nodata='1' then
	LED  <= "00";
	else
		case(realdata) is
			when "100" => LED  <= "10";		
			when "101" => LED  <= "01";								
			when others => LED  <= "00";
		end case;
		end if;
	end process;

end Behavioral;

