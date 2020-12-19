
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity register1bits is
   port(
      CLK      : in  std_logic;
      CLR    : in  std_logic;
      d_in : in std_logic;
      d_out : out std_logic
      );
end register1bits;

architecture Behavioral of register1bits is

begin
  process (CLK,CLR)
  begin
        if CLR='1' then
				d_out<='0';
        elsif rising_edge(CLK) then
			d_out<=d_in;
        end if;
	end process;

end Behavioral;

