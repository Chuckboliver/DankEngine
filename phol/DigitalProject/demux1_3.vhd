library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

entity demux1_3 is
 port(
 data_done:in std_logic;
 demux_in : in std_logic_vector(11 downto 0);
 Selector: in std_logic_vector(2 downto 0);
 

 
 clk_Move_reg:out std_logic:='0';
 clk_Promote_reg:out std_logic:='0';
  clk_whoWin_reg:out std_logic:='0';
 clk_winType_reg:out std_logic:='0';
 clk_Error_Move_reg:out std_logic:='0';
 clk_Error_Promote_reg:out std_logic:='0';

 
  Move: out std_logic_vector(11 downto 0);
  Promote:out std_logic_vector(1 downto 0);
  whoWin:out std_logic_vector(1 downto 0);
  winType:out std_logic;
  Error_Move:out std_logic;
 Error_Promote:out std_logic

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

 elsif SEL="101"  then 
		if demux_in(11 downto 9)="100" then
			Error_Promote<='1';
			clk_Error_Promote_reg<=data_done;
		elsif demux_in(11 downto 9)="101" then
			Error_Move<='1';
			clk_Error_Move_reg<=data_done;
			end if;
	 
elsif  SEL="100" then
    Promote<=demux_in(11 downto 10);
	 clk_Promote_reg<=data_done;
	 
elsif SEL="110" then
		winType<=demux_in(11);
		whoWin<=demux_in(10 downto 9);
clk_whoWin_reg<=data_done;
clk_winType_reg<=data_done;
else
		whoWin<=(others=>'0');
		winType<='0';
		 Move<=(others=>'0');
		 Error_Move<='0';
		 Error_Promote<='0';
		 Promote<=(others=>'0');
 end if;
 
end process;
end bhv;
