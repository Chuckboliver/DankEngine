
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity promote_Decoder_LED is
    Port ( inp : in  STD_LOGIC_VECTOR (15 downto 0);
				nodata:in  STD_LOGIC;
           LED : out  STD_LOGIC_VECTOR (3 downto 0));
end promote_Decoder_LED;

architecture Behavioral of promote_Decoder_LED is

signal realdata:STD_LOGIC_VECTOR (1 downto 0):=(others=>'0');

begin
process(inp)
	begin
	
	
	realdata<=inp(12)&inp(11);
	if nodata='1' then
		LED <="0000";
	else
		case(realdata) is
			when "00" => LED  <= "1000";		
			when "01" => LED  <= "0100";	
			when "10" => LED  <= "0010";		
			when "11" => LED  <= "0001";	
			when others => LED  <= "0000";
		end case;
	end if;
	end process;

end Behavioral;

