
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity counter0_1 is
port(---for counter
         alp : in STD_LOGIC_VECTOR(7 downto 0);
			num : in STD_LOGIC_VECTOR(7 downto 0); 
			clear : in STD_LOGIC;
			
			ready_move : out STD_LOGIC;
			move : out STD_LOGIC_VECTOR(11 downto 0)
			);


end counter0_1;

architecture Behavioral of counter0_1 is

	signal sel_alp : std_logic;
	signal sel_num : std_logic;
	
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
	
	process(alp)
	begin
		alphabet_data(2) <= alp(4) or alp(5) or alp(6) or alp(7);
		alphabet_data(1) <= alp(2) or alp(3) or alp(6) or alp(7);
		alphabet_data(0) <= alp(1) or alp(3) or alp(5) or alp(7);
	end process;
	
-- alphabet
	process(clock_alp, clear)
	begin
		if (clear='1') then   
			sel_alp <= '0';   
		elsif (rising_edge(clock_alp)) then 
			if(sel_alp <= '0') then
				sel_alp <= '1';
			elsif(sel_alp <= '1') then
				sel_alp <= '0';
			end if;
	 end if;    
	end process;

	process (alphabet_data,sel_alp) is
	begin
		 if (sel_alp ='0') then
			alphabet_sent1 <= alphabet_data;
		 elsif (sel_alp ='1' ) then
			alphabet_sent2 <= alphabet_data;
		 else
			alphabet_sent1 <= alphabet_data;
		 end if;
	end process;

	process(ready_alp1, ready_alp2, alphabet_data, clock_alp, clear)
	begin
		if(sel_alp = '0') then
			if(clear = '1') then
				alphabet_sent1 <= (OTHERS => '0');
				ready_alp1 <= '0';
			elsif(rising_edge(clock_alp)) then
				alphabet_sent1 <= alphabet_data;
				ready_alp1 <= clock_alp;
				end if;
		elsif(sel_alp = '1') then
			if(clear = '1') then
				alphabet_sent2 <= (OTHERS => '0');
				ready_alp1 <= '0';
			elsif(rising_edge(clock_alp)) then
				alphabet_sent2 <= alphabet_data;
				ready_alp2 <= clock_alp;
				end if;
		end if;
	end process;

	
	

-- number
	process(clock_num, clear)
	begin
		if (clear='1') then   
			sel_num <= '0';   
		elsif (rising_edge(clock_num)) then
			if(sel_num = '0')then
				sel_num <= '1';
			elsif(sel_num = '1')then
				sel_num <= '0';
			end if;
	 end if;    
	end process;

	process (number_data,sel_num) is
	begin
		 if (sel_num ='0') then
			number_sent1 <= number_data;
		 elsif (sel_num ='1' ) then
			number_sent2 <= number_data;
		 else
			number_sent1 <= number_data;
		 end if;
	end process;

	process(ready_num1, ready_num2, number_data, clock_num, clear)
	begin
		if(sel_num = '0') then
			if(clear = '1') then
				number_sent1 <= (OTHERS => '0');
				ready_num1 <= '0';
			elsif(rising_edge(clock_num)) then
				number_sent1 <= number_data;
				ready_num1 <= clock_num;
				end if;
		elsif(sel_num = '1') then
			if(clear = '1') then
				number_sent2 <= (OTHERS => '0');
				ready_num1 <= '0';
			elsif(rising_edge(clock_num)) then
				number_sent2 <= number_data;
				ready_num2 <= clock_num;
				end if;
		end if;
			
	ready_move <= ready_alp1 and ready_alp2 and ready_num1 and ready_num2;
	move <= alphabet_sent2 & number_sent2 & alphabet_sent1 & number_sent1;
	end process;
end Behavioral;

		
