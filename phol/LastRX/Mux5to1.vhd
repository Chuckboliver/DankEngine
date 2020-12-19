
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Mux5to1 is
	port(
	newGame_in:in std_logic_vector(15 downto 0);
	chooseSide_in:in std_logic_vector(15 downto 0);
	set_level_in:in std_logic_vector(15 downto 0);
	move_in:in std_logic_vector(15 downto 0);
	piece_in:in std_logic_vector(15 downto 0);
	
	out_data:out std_logic_vector(15 downto 0)

	);
end Mux5to1;

architecture Behavioral of Mux5to1 is

signal ng_header: std_logic_vector(3 downto 0):=(others=>'0');
signal cs_header: std_logic_vector(2 downto 0):=(others=>'0');
signal sl_header: std_logic_vector(2 downto 0):=(others=>'0');
signal mv_header: std_logic_vector(2 downto 0):=(others=>'0');
signal pi_header: std_logic_vector(2 downto 0):=(others=>'0');

begin
process(newGame_in,chooseSide_in,set_level_in,move_in,piece_in) is

begin
ng_header<=newGame_in(15)&newGame_in(14)&newGame_in(13)&newGame_in(12);
cs_header<=chooseSide_in(15)&chooseSide_in(14)&chooseSide_in(13);
sl_header<=set_level_in(15)&set_level_in(14)&set_level_in(13);
mv_header<=move_in(15)&move_in(14)&move_in(13);
 pi_header<=piece_in(15)&piece_in(14)&piece_in(13);
 
if ng_header="0001" then

out_data<=newGame_in;


elsif cs_header="001" then
out_data<=chooseSide_in;

elsif sl_header="010" then
out_data<=set_level_in;

elsif mv_header="011" then
out_data<=move_in;

elsif pi_header="100" then
out_data<=piece_in;

else
out_data<=(others=>'0');
 
end if;
end process;

end Behavioral;

