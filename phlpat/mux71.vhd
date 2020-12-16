----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:45:53 12/16/2020 
-- Design Name: 
-- Module Name:    mux71 - Behavioral 
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
library ieee;
use ieee. std_logic_1164.all;
use ieee. std_logic_arith.all;
use ieee. std_logic_unsigned.all;
use ieee.numeric_std.all;

entity mux71 is

PORT( I0, I1, I6 : in STD_LOGIC;
		I2 : in STD_LOGIC_VECTOR(2 downto 0);
		I3 : in STD_LOGIC_VECTOR(11 downto 0);
		I4 : in STD_LOGIC_VECTOR(1 downto 0);
		S : in STD_LOGIC_VECTOR(2 downto 0);
		
		data : out STD_LOGIC_VECTOR(11 downto 0)
		
		);

end mux71;

architecture Behavioral of mux71 is
begin
	process(I0, I1, I2, I3, I4, I6, S)
	begin
		case(S) is
			when "000" => data <= I0 & "00000000000";		-- add 11 bits
			when "001" => data <= I1 & "00000000000";		-- add 11 bits
			when "010" => data <= I2 & "000000000";		-- add 9 bits
			when "011" => data <= I3;							-- add 0 bits
			when "100" => data <= I4 & "0000000000"; 		-- add 10 bits
			when "110" => data <= I6 & "00000000000";		-- add 11 bits
			when others => data <= "000000000000";
		end case;
		
	end process;
	
	

end Behavioral;

