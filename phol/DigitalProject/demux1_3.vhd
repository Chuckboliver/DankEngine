library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

entity demux1_3 is
 port(
 data_done:in std_logic;
 demux_in : in std_logic_vector(11 downto 0);
 Selector: in std_logic_vector(2 downto 0);
 Move: out std_logic_vector(11 downto 0);
 
 clk_Move_reg:out std_logic:='0';
 clk_Error_reg:out std_logic:='0';
  
 Error:out std_logic_vector(5 downto 0);

 EndGame
 
 );

end demux1_3;
 
architecture bhv of demux1_3 is
    signal SEL :std_logic_vector(2 downto 0):=Selector;
begin
process (demux_in ,SEL,data_done) is
begin
 if SEL="011" then
    Move<=demux_in;
	 clk_Move_reg<=data_done;

 elsif SEL="101" then 
    Error<=demux_in(5 downto 0);
	 clk_Error_reg<=data_done;
elsif  SEL="100" then
    Promote<=demux_in(4 downto 0);
	 clk_Promote_reg<=data_done;
	else
		 Move<=(others=>'0');
		 Error<=(others=>'0');
		 Promote<=(others=>'0');
 end if;
 
end process;
end bhv;
