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

entity decoder2to2_whoWin is
    Port ( inp : in  STD_LOGIC_VECTOR (1 downto 0);
           seg : out  STD_LOGIC_VECTOR (1 downto 0));
end decoder2to2_whoWin;

architecture Behavioral of decoder2to2_whoWin is
	
begin
	process(inp)
	begin
		case(inp) is
			when "00" => seg <= "00";		
			when "01" => seg <= "10";		
			when "10" => seg <= "01";								
			when others => seg <= "00";
		end case;
		
	end process;


end Behavioral;

