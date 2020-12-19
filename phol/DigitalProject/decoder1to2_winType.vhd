----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:30:43 12/16/2020 
-- Design Name: 
-- Module Name:    decoder1to2_winType - Behavioral 
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

entity decoder1to2_winType is
    Port ( inp : in  STD_LOGIC;
           seg : out  STD_LOGIC_VECTOR (1 downto 0));
end decoder1to2_winType;

architecture Behavioral of decoder1to2_winType is

begin
	process(inp)
	begin
		case(inp) is
			when '0' => seg <= "10";		
			when '1' => seg <= "01";									
			when others => seg <= "00";
		end case;
		
	end process;

end Behavioral;

