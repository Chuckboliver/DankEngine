library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;


entity addHeader is

    Port ( newGame_switch : in  STD_LOGIC;
           newGame_head : out  STD_LOGIC_VECTOR (15 downto 0);
			  
           chooseSide : in  STD_LOGIC_VECTOR (1 downto 0);
           chooseSide_head : out  STD_LOGIC_VECTOR (15 downto 0);
			  LED : out STD_LOGIC_VECTOR(1 downto 0);
			  
			  clear_level : in STD_LOGIC;
           updown_switch : in  STD_LOGIC_VECTOR (1 downto 0);
           setLevel_head : out  STD_LOGIC_VECTOR (15 downto 0);
			  segment_sl : out STD_LOGIC_VECTOR (6 downto 0);
			  
			  clear_move : in STD_LOGIC;
           alp : in  STD_LOGIC_VECTOR (7 downto 0);
           num : in  STD_LOGIC_VECTOR (7 downto 0);
           move_head : out  STD_LOGIC_VECTOR (15 downto 0);
			  
           piece : in  STD_LOGIC_VECTOR (3 downto 0);
           piece_out : out  STD_LOGIC_VECTOR (15 downto 0));
			  
end addHeader;

architecture Behavioral of addHeader is
	signal choseSide : std_logic;
	signal setLevel : std_logic_vector(2 downto 0);
	signal clk_counter4 : std_logic;
	signal alphabet_data, number_data : std_logic_vector(2 downto 0);
	signal clock_alp, clock_num, clock : std_logic;
	signal sel_alp, sel_num : std_logic;
	signal alphabet_sent1, alphabet_sent2, number_sent1, number_sent2 : std_logic_vector(2 downto 0);
	signal COUNT : integer range 0 to 4 := 0;
	signal rnbq : std_logic_vector(1 downto 0);
	
begin
	-- new game--
	newGame_head <= "000" & newGame_switch & "000000000000";
	
	-- choose side--
	choseSide <= chooseSide(1) or (not chooseSide(0));
	chooseSide_head <= "001" & choseSide & "000000000000";
	
	-- Display chooseplay --
	process(choseSide)
	begin
		case(choseSide) is
		when '1' => LED <= "10";
		when '0' => LED <= "01";
		when others => LED <= "01";
		end case;
	end process;
	
	-- set level --
	clk_counter4 <= updown_switch(1) or updown_switch(0);
	process(clk_counter4)
	begin
		if(rising_edge(clk_counter4)) then
			if(clear_level = '1') then
				setLevel <= "000";
			-- up switch -- 
			elsif (updown_switch(1) = '1') then
				if(setLevel = "100") then
					setLevel <= "100";
				else 
					setLevel <= setLevel + 1;
				end if;
			-- down switch --
			elsif(updown_switch(0) = '1') then
				if(setLevel = "000") then
					setLevel <= "000";
				else 
					setLevel <= setLevel - 1;
				end if;
			end if;
		end if;
	end process;
	setLevel_Head <= "010" & setLevel & "0000000000";
	
	-- Display SL --
	process(setLevel)
	begin
		case(setLevel) is
			when "000" => segment_sl <= "0110000";		
			when "001" => segment_sl <= "1101101";		
			when "010" => segment_sl <= "1111001";		
			when "011" => segment_sl <= "0110011";							
			when "100" => segment_sl <= "1011011"; 			
			when others => segment_sl <= "0000000";
		end case;
		
	end process;
	
	-- move --
	clock_alp <= alp(0) or alp(1) or alp(2) or alp(3) or alp(4) or alp(5) or alp(6) or alp(7);
	clock_num <= num(0) or num(1) or num(2) or num(3) or num(4) or num(5) or num(6) or num(7);
	clock <= alp(0) or alp(1) or alp(2) or alp(3) or alp(4) or alp(5) or alp(6) or alp(7)or num(0) or num(1) or num(2) or num(3) or num(4) or num(5) or num(6) or num(7);
	
	process(clock,clear_move)
	begin
		if (clear_move = '1')then
			COUNT <= 0;
		elsif(rising_edge(clock))then
			COUNT <= COUNT + 1;
		end if;
	end process;
	
	process(alp)
	begin
		alphabet_data(2) <= alp(4) or alp(5) or alp(6) or alp(7);
		alphabet_data(1) <= alp(2) or alp(3) or alp(6) or alp(7);
		alphabet_data(0) <= alp(1) or alp(3) or alp(5) or alp(7);
	end process;
	
	-- alphabet
	process(clock_alp, clear_move)
	begin
		if (clear_move='1') then   
			sel_alp <= '0';   
		elsif (rising_edge(clock_alp)) then 
			if(sel_alp <= '0') then
				sel_alp <= '1';
			elsif(sel_alp <= '1') then
				sel_alp <= '0';
			end if;
	 end if;    
	end process;



	process(alphabet_data, clock_alp, clear_move)
	begin
		if(sel_alp = '0') then
			if(clear_move = '1') then
				alphabet_sent1 <= (OTHERS => '0');
			elsif(rising_edge(clock_alp)) then
				alphabet_sent1 <= alphabet_data;
				end if;
		elsif(sel_alp = '1') then
			if(clear_move = '1') then
				alphabet_sent2 <= (OTHERS => '0');
			elsif(rising_edge(clock_alp)) then
				alphabet_sent2 <= alphabet_data;
				end if;
		end if;
	end process;

	
	-- number
	process(num)
	begin
		number_data(2) <= num(4) or num(5) or num(6) or num(7);
		number_data(1) <= num(2) or num(3) or num(6) or num(7);
		number_data(0) <= num(1) or num(3) or num(5) or num(7);
	end process;
	
	process(clock_num, clear_move)
	begin
		if (clear_move = '1') then   
			sel_num <= '0';   
		elsif (rising_edge(clock_num)) then
			if(sel_num = '0')then
				sel_num <= '1';
			elsif(sel_num = '1')then
				sel_num <= '0';
			end if;
	 end if;    
	end process;

	process(number_data, clock_num, clear_move)
	begin
		if(sel_num = '0') then
			if(clear_move = '1') then
				number_sent1 <= (OTHERS => '0');
			elsif(rising_edge(clock_num)) then
				number_sent1 <= number_data;
				end if;
		elsif(sel_num = '1') then
			if(clear_move = '1') then
				number_sent2 <= (OTHERS => '0');
			elsif(rising_edge(clock_num)) then
				number_sent2 <= number_data;
			end if;
		end if;
	end process;
	
	process(COUNT)
	begin
		if(COUNT = 4) then
			move_head <= "011" & alphabet_sent1 & number_sent1 & alphabet_sent2 & number_sent2 & "0";
		end if;
	end process;
	
	
	-- piece --
	process(piece)
	begin
		case(piece) is
	when "1000" => rnbq <= "00"; 
	when "0100" => rnbq <= "01"; 
	when "0010" => rnbq <= "10"; 
	when "0001" => rnbq <= "11"; 
	when others => rnbq <= "00";
	end case;
	
	piece_out <= "100" & rnbq & "00000000000";
	end process;
	

end Behavioral;