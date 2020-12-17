----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:47:38 12/16/2020 
-- Design Name: 
-- Module Name:    mergeData - Behavioral 
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


entity mergeData is
    Port (
        data_in: in std_logic_vector(11 downto 0);
		  SEL:in std_logic_vector(2 downto 0);

        data_out: out std_logic_vector(15 downto 0)
    );

end mergeData;

architecture Behavioral of mergeData is

begin
 process(data_in)
 begin
 data_out<=(SEL&data_in&'0');
 end process;

end Behavioral;

