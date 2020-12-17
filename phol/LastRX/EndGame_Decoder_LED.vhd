----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:35:08 12/17/2020 
-- Design Name: 
-- Module Name:    EndGame_Decoder_LED - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity EndGame_Decoder_LED is
    Port ( inp : in  STD_LOGIC_VECTOR (15 downto 0);
				nodata:in  STD_LOGIC;
			
			  whoWin_LED:out  STD_LOGIC_VECTOR (1 downto 0);
			  
			  winType_LED:out  STD_LOGIC_VECTOR (1 downto 0)
			  );
			  
end EndGame_Decoder_LED;

architecture Behavioral of EndGame_Decoder_LED is

signal winType:STD_LOGIC :=inp(12);
signal whoWin:STD_LOGIC_VECTOR (1 downto 0):=inp(11)&inp(10);

begin
process(inp)
	begin
	if nodata='1' then
		winType_LED<="00";
		whoWin_LED<="00";
	else

		case(winType) is
			when '0' => winType_LED <= "10";		
			when '1' => winType_LED <= "01";	
			when others => winType_LED  <= "00";
		end case;
		case(whoWin) is
			when "00" => whoWin_LED  <= "00";		
			when "01" => whoWin_LED  <= "10";	
			when "10" => whoWin_LED <= "01";		
			when others =>whoWin_LED  <= "00";
		end case;

		end if;
	end process;


end Behavioral;

