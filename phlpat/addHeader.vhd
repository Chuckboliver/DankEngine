library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;


entity addHeader is

    Port ( newGame_switch : in  STD_LOGIC;
           newGame_head : out  STD_LOGIC_VECTOR (3 downto 0);
			  
           chooseSide : in  STD_LOGIC_VECTOR (1 downto 0);
           chooseSide_head : out  STD_LOGIC_VECTOR (3 downto 0);
			  
			  clear_level : in STD_LOGIC;
           updown_switch : in  STD_LOGIC_VECTOR (1 downto 0);
           setLevel_head : out  STD_LOGIC_VECTOR (5 downto 0);
			  
           alphabet : in  STD_LOGIC_VECTOR (7 downto 0);
           number : in  STD_LOGIC_VECTOR (7 downto 0);
           move_head : out  STD_LOGIC_VECTOR (14 downto 0);
			  
           piece : in  STD_LOGIC_VECTOR (3 downto 0);
           piece_out : in  STD_LOGIC_VECTOR (4 downto 0));
			  
end addHeader;

architecture Behavioral of addHeader is
	signal choseSide : std_logic;
	signal setLevel : std_logic_vector(2 downto 0);
	signal clk_counter4 : std_ulogic;
begin
	-- new game--
	newGame_head <= "000" & newGame_switch;
	
	-- choose side--
	choseSide <= chooseSide(1) or (not chooseSide(0));
	chooseSide_head <= "001" & choseSide;
	
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
	setLevel_Head <= "010" & setLevel;


end Behavioral;

