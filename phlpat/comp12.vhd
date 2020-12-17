----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    05:25:11 12/17/2020 
-- Design Name: 
-- Module Name:    comp12 - Behavioral 
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

entity comp12 is
    Port ( A : in  STD_LOGIC_VECTOR (11 downto 0);
           send : out  STD_LOGIC);
end comp12;

architecture Behavioral of comp12 is

begin
	send <= A(11) or A(10) or A(9) or A(8) or A(7) or A(6) or A(5) or A(4) or A(3) or A(2) or A(1) or A(0) or '0';


end Behavioral;

