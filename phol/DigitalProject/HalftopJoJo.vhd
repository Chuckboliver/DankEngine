----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:41:13 12/17/2020 
-- Design Name: 
-- Module Name:    HalftopJoJo - Behavioral 
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

entity HalftopJoJo is
	PORT( alp : in STD_LOGIC_VECTOR(7 downto 0);
			num : in STD_LOGIC_VECTOR(7 downto 0); 
			clear : in STD_LOGIC;
			
			ready_move : out STD_LOGIC;
			move : out STD_LOGIC_VECTOR(11 downto 0)
			
			);
end HalftopJoJo;

architecture Behavioral of HalftopJoJo is
	signal clock_alp : std_logic;
	signal clock_num : std_logic;
	signal ready_alp1, ready_alp2 : std_logic;
	signal ready_num1, ready_num2 : std_logic;
	
	signal alphabet_data : std_logic_vector(2 downto 0);
	signal number_data : std_logic_vector(2 downto 0);
	
	signal alphabet_sent1 : std_logic_vector(2 downto 0);
	signal alphabet_sent2 : std_logic_vector(2 downto 0);
	signal number_sent1 : std_logic_vector(2 downto 0);
	signal number_sent2 : std_logic_vector(2 downto 0);
	
begin
	clock_alp <= alp(0) or alp(1) or alp(2) or alp(3) or alp(4) or alp(5) or alp(6) or alp(7);
	clock_num <= num(0) or num(1) or num(2) or num(3) or num(4) or num(5) or num(6) or num(7);
	
	-- alp shift
	process(alp)
	begin
		alphabet_data(2) <= alp(4) or alp(5) or alp(6) or alp(7);
		alphabet_data(1) <= alp(2) or alp(3) or alp(6) or alp(7);
		alphabet_data(0) <= alp(1) or alp(3) or alp(5) or alp(7);
	end process;
		
	process(ready_alp1, ready_alp2, alphabet_data, clock_alp, clear)
	begin
		if(clear = '1') then
			alphabet_sent1 <= (OTHERS => '0');
			ready_alp1 <= '0';
		elsif(rising_edge(clock_alp)) then
			alphabet_sent1 <= alphabet_data;
			ready_alp1 <= clock_alp;
			end if;
	end process;
	
	process(ready_alp1, ready_alp2, alphabet_sent1, clock_alp, clear)
	begin
		if(clear = '1') then
			alphabet_sent2 <= (OTHERS => '0');
			ready_alp2 <= '0';
		elsif(rising_edge(clock_alp)) then
			alphabet_sent2 <= alphabet_sent1;
			ready_alp2 <= ready_alp1;
			end if;
	end process;
	
	
	-- num shift
	process(num)
	begin
		number_data(2) <= alp(4) or alp(5) or alp(6) or alp(7);
		number_data(1) <= alp(2) or alp(3) or alp(6) or alp(7);
		number_data(0) <= alp(1) or alp(3) or alp(5) or alp(7);
	end process;
		
	process(ready_num1, ready_num2, number_data, clock_alp, clear)
	begin
		if(clear = '1') then
			number_sent1 <= (OTHERS => '0');
			ready_num1 <= '0';
		elsif(rising_edge(clock_num)) then
			number_sent1 <= number_data;
			ready_num1 <= clock_num;
			end if;
	end process;
	
	process(ready_num1, ready_num2, number_sent1, clock_alp, clear)
	begin
		if(clear = '1') then
			number_sent2 <= (OTHERS => '0');
			ready_num2 <= '0';
		elsif(rising_edge(clock_num)) then
			number_sent2 <= number_sent1;
			ready_num2 <= ready_num1;
			end if;
	end process;
	
	ready_move <= ready_alp1 and ready_alp2 and ready_num1 and ready_num2;
	move <= alphabet_sent2 & number_sent2 & alphabet_sent1 & number_sent1;


end Behavioral;

