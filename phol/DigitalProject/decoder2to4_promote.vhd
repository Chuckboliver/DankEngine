library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity decoder2to4_promote is
    Port ( inp : in  STD_LOGIC_VECTOR (1 downto 0);
           seg : out  STD_LOGIC_VECTOR (3 downto 0));
end decoder2to4_promote;

architecture Behavioral of decoder2to4_promote is

begin

	process(inp)
	begin
		case(inp) is
			when "00" => seg <= "1000";		
			when "01" => seg <= "0100";		
			when "10" => seg <= "0010";		
			when "11" => seg <= "0001";							
			when others => seg <= "0000";
		end case;
		
	end process;
end Behavioral;





