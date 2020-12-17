----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:03:36 12/16/2020 
-- Design Name: 
-- Module Name:    reg2bits - Behavioral 
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

entity reg2bits is
 port(
      CLK      : in  std_logic;
      CLR    : in  std_logic;
      d_in : in std_logic_vector(1 downto 0);
      d_out : out std_logic_vector(1 downto 0)
      );
end reg2bits;

architecture Behavioral of reg2bits is

begin
  process (CLK,CLR)
  begin
        if CLR='1' then
				d_out<="00";
        elsif rising_edge(CLK) then
			d_out<=d_in;
        end if;
	end process;

end Behavioral;

