----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:16:35 12/16/2020 
-- Design Name: 
-- Module Name:    rnbq - Behavioral 
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

entity rnbq is
    Port ( inp : in  STD_LOGIC_VECTOR (1 downto 0);
           seg : out  STD_LOGIC_VECTOR (6 downto 0));
end rnbq;

architecture Behavioral of rnbq is
	
begin
	process(inp)
	begin
		case(inp) is
			when "00" => seg <= "1000110";		
			when "01" => seg <= "0010101";		
			when "10" => seg <= "0011111";		
			when "11" => seg <= "1110011";							
			when others => seg <= "0000000";
		end case;
		
	end process;


end Behavioral;

