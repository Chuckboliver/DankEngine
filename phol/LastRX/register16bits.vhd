----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:52:05 12/17/2020 
-- Design Name: 
-- Module Name:    register16bits - Behavioral 
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
use ieee.numeric_std.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity register16bits is
  port (
    clk : in std_logic;
 
    reset : in std_logic;
 
    para_in : in std_logic_vector(15 downto 0);
    para_out : out std_logic_vector(15 downto 0)
	 
  );
end register16bits;

architecture Behavioral of register16bits is

begin
process(clk,reset) is
begin 

if reset='1' then
	para_out<=(others=>'0');

elsif rising_edge(clk) then
	para_out<=para_in;

end if;


end process;




end Behavioral;

