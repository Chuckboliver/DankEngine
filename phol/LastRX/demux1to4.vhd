
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity demux1to4 is
port(
rx_in:in std_logic_vector(15 downto 0);


bot_Move_Out:out std_logic_vector(15 downto 0);
error_Out:out std_logic_vector(15 downto 0);
promote_Out:out std_logic_vector(15 downto 0);
end_Game_Out:out std_logic_vector(15 downto 0)
);


end demux1to4;

architecture Behavioral of demux1to4 is

signal header :std_logic_vector(2 downto 0):=(others=>'0');

begin

process(rx_in) is
begin 
header<=rx_in(15)&rx_in(14)&rx_in(13);
case header is
	when "011"=>
		bot_Move_Out<=rx_in;
	when "101"=>
		error_Out<=rx_in;
	when "100"=>
		promote_Out<=rx_in;
	when "110"=>
		end_Game_Out<=rx_in;
	when others=>
		bot_Move_Out<=(others=>'0');
		error_Out<=(others=>'0');
		promote_Out<=(others=>'0');
		end_Game_Out<=(others=>'0');
	end case;
	end process;




end Behavioral;

