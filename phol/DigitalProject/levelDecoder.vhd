----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:59:50 12/16/2020 
-- Design Name: 
-- Module Name:    levelDecoder - Behavioral 
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

entity levelDecoder is
    Port ( inp : in  STD_LOGIC_VECTOR (2 downto 0);
           seg : out STD_LOGIC_VECTOR (6 downto 0);
			  common:out STD_LOGIC
			  );
end levelDecoder;

architecture Behavioral of levelDecoder is
begin
	process(inp)
	begin
		case(inp) is
			when "000" => 
			seg <= "0110000";
				common<='0';			
			when "001" => 
			seg <= "1101101";	
				common<='0';			
			when "010" => 
			seg <= "1111001";	
			common<='0';			
			when "011" => 
			seg <= "0110011";
common<='0';			
			when "100" => 
			seg <= "1011011";
common<='0'; 			
			when others => 
			seg <= "0000000";
			common<='1';
			
		end case;
		
	end process;


end Behavioral;

