library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

entity demux1_3 is
 port(
 
 demux_in : in std_logic_vector(11 downto 0);
 S0,S1,S2: in STD_LOGIC;
 Move: out std_logic_vector(11 downto 0);
 Error:out std_logic_vector(5 downto 0);
 Promote:out std_logic_vector(4 downto 0)
 );

end demux1_3;
 
architecture bhv of demux1_3 is
    signal SEL :std_logic_vector(2 downto 0):=S0&S1&S2;
begin
process (demux_in ,S0,S1,S2) is
begin
 if SEL="011" then
    Move<=demux_in;
 elsif SEL="101" then 
    Error<=demux_in(5 downto 0);
elsif  SEL="100" then
    Promote<=demux_in(4 downto 0);
 end if;
 
end process;
end bhv;
