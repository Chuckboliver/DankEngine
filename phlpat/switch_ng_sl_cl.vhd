----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    06:17:02 12/12/2020 
-- Design Name: 
-- Module Name:    ProjectDigital - Behavioral 
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
library ieee;
use ieee. std_logic_1164.all;
use ieee. std_logic_arith.all;
use ieee. std_logic_unsigned.all;
use ieee.numeric_std.all;

entity ProjectDigital is

PORT( newgame_switch, clear_out1, clear_ready_out1 : in  STD_LOGIC;
		out1,ready_out1 : out  STD_LOGIC;
		 
		 
		black_switch, white_switch, clear_out2, clear_ready_out2 : in STD_LOGIC;
		out2, ready_out2 : out STD_LOGIC;
		
		
		up_switch, down_switch, clear_out3, clear_ready_out3 : in STD_LOGIC;
		out3 : out STD_LOGIC_VECTOR(2 downto 0);
		ready_out3 : out STD_LOGIC;
		
		
		a : in STD_LOGIC_VECTOR(3 downto 0);
		out4 : out STD_LOGIC_VECTOR(1 downto 0);
		clear_out4, clear_ready_out4 : in STD_LOGIC;
		ready_out4 : out STD_LOGIC);
		
		
end ProjectDigital;
 
architecture behavioral of ProjectDigital is
	
	signal o1 : std_logic;
	signal o2 : std_logic;
	
	signal b : STD_LOGIC_VECTOR(1 downto 0);
	signal c : STD_LOGIC_VECTOR(1 downto 0);
	signal s1 : std_logic;
	
	signal z : STD_LOGIC_VECTOR(2 downto 0);
	signal clk : std_logic;
begin
-- 2 bits register(new game)
	
	process(newgame_switch, clear_out1)
	begin
		if(clear_out1 = '1') then
			out1 <= '0';
		elsif(rising_edge(newgame_switch)) then
			out1 <= newgame_switch;
			end if;
		end process;
		
	process(newgame_switch, clear_ready_out1)
	begin
		if(clear_ready_out1 = '1') then
			ready_out1 <= '0';
		elsif(rising_edge(newgame_switch)) then
			ready_out1 <= newgame_switch;
			end if;
		end process;
		

-- 2 bits to 1 bit encoder and 2 bits register(choose side)
	process(black_switch, white_switch)
	begin
		o1 <= black_switch or (not white_switch);
		o2 <= black_switch or white_switch;
		end process;
	
	process(o1, o2, clear_out2)
	begin
		if(clear_out2 = '1') then
			out2 <= '0';
		elsif(rising_edge(o2)) then
			out2 <= o1;
			end if;
		end process;
		
	process(o2, clear_ready_out2)
	begin
		if(clear_ready_out2 = '1') then
			ready_out2 <= '0';
		elsif(rising_edge(o2)) then
			ready_out2 <= o2;
			end if;
		end process;
	
	
-- 3 bits counter/1-5/ and 4 bits register(difficult)
	clk <= up_switch or down_switch;
	process(clk)
	begin
		if rising_edge(clk) then               
			if(clear_out3 ='1') then                     
			  z <= "000" ;                    
			elsif (up_switch = '1') then
				if(z = "100") then
					z <= z;
				else 
					z <= z + 1;
				end if;
				
			elsif(down_switch = '1') then
				if((z = "000")) then
					z <= z;
				else 
					z <= z - 1;
				end if;
			end if;
		end if;
	end process;
	
	process(z, clk, clear_out3)
	begin
		if(clear_out3 = '1') then
			out3 <= (OTHERS => '0');
		elsif(rising_edge(clk)) then
			out3 <= z;
			end if;
		end process;
	
	process(clk, clear_ready_out3)
	begin
		if(clear_ready_out3 = '1') then
			ready_out3 <= '0';
		elsif(rising_edge(clk)) then
			ready_out3 <= clk;
			end if;
		end process;
	




-- 4 bits to 2 bits encoder and 3 bits register(Promote)
	process(a)
	begin
		case a is
			when "1000" => b <= "00"; when "0100" => b <= "01"; when "0010" => b <= "10"; when "0001" => b <= "11"; when others => b <= "ZZ";
		end case;
	end process;
	
	s1 <= a(3) or a(2) or a(1) or a(0);
	
	process(b, s1, clear_out4)
	begin
		if(clear_out4 = '1') then
			out4 <= (OTHERS => '0');
		elsif(rising_edge(s1)) then
			out4 <= b;
			end if;
		end process;
		
	process(s1 ,clear_ready_out4)
	begin
		if(clear_ready_out4 = '1') then
			ready_out4 <= '0';
		elsif(rising_edge(s1)) then
			ready_out4 <= s1;
			end if;
		end process; 


end behavioral;

