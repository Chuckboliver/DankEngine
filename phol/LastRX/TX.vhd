library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;

entity addHeader is
    Port(
        newgame_switch :  in std_logic;
        choose_side_switch : in  STD_LOGIC_VECTOR (1 downto 0):=(others=>'0');
        set_level_switch : in  STD_LOGIC_VECTOR (1 downto 0):=(others=>'0');
        alp : in  STD_LOGIC_VECTOR (7 downto 0):=(others=>'0');
        num : in  STD_LOGIC_VECTOR (7 downto 0):=(others=>'0');
        piece_switch : in  STD_LOGIC_VECTOR (3 downto 0):=(others=>'0');

        data : out STD_LOGIC_VECTOR(15 downto 0):=(others=>'0');
        debug_led : out std_logic;
        trigger : out std_logic := '0';

        choose_side_LED : out STD_LOGIC_VECTOR(1 downto 0):=(others=>'0');
        set_level_LED : out STD_LOGIC_VECTOR(6 downto 0):=(others=>'0')
    );
end addHeader;

architecture Behavioral of addHeader is
    signal set_level : STD_LOGIC_VECTOR(2 downto 0):=(others=>'0');
    signal count : integer range 0 to 4 := 0;
    
    -- move --
    signal temp : STD_LOGIC_VECTOR(2 downto 0):=(others=>'0');
    signal from_file : STD_LOGIC_VECTOR(2 downto 0):=(others=>'0');
    signal from_rank : STD_LOGIC_VECTOR(2 downto 0):=(others=>'0');
    signal to_file : STD_LOGIC_VECTOR(2 downto 0):=(others=>'0');
    signal to_rank : STD_LOGIC_VECTOR(2 downto 0):=(others=>'0');
    -- move --
begin
    -- new game --
    PROC : process(newgame_switch, choose_side_switch, set_level_switch, alp, num, piece_switch)
    begin
        if newgame_switch = '1' then
            debug_led <= '1';
            data <= "0001000000000000";
            trigger <= '1';
        elsif choose_side_switch(0) = '1' then
            debug_led <= '1';
            data <= "0010000000000000";
            choose_side_LED <= "10";
            trigger <= '1';
        elsif choose_side_switch(1) = '1' then
            debug_led <= '1';
            data <= "0011000000000000";
            choose_side_LED <= "01";
            trigger <= '1';
        elsif set_level_switch(0) = '1' then
            debug_led <= '1';
            if set_level = "000" then
                set_level <= set_level;
                trigger <= '0';
            else
                set_level <= set_level - 1;
                data <= "010" & set_level & "0000000000";
                trigger <= '1';
            end if;
        elsif set_level_switch(1) = '1' then
            debug_led <= '1';
            if set_level = "100" then
                set_level <= set_level;
                trigger <= '0';
            else
                set_level <= set_level + 1;
                data <= "010" & set_level & "0000000000";
                trigger <= '1';
           end if;
        -- elsif alp /= "00000000" or num /= "00000000"then
        --     debug_led <= '1';
        --     if alp /= "00000000" then
        --         case(alp) is
        --             when "10000000" => 
        --                 temp <= "000";
        --             when "01000000" =>
        --                 temp <= "001";
        --             when "00100000" =>
        --                 temp <= "010";
        --             when "00010000" =>
        --                 temp <= "011";
        --             when "00001000" =>
        --                 temp <= "100";
        --             when "00000100" =>
        --                 temp <= "101";
        --             when "00000010" =>
        --                 temp <= "110";
        --             when "00000001" =>
        --                 temp <= "111";
        --             when others =>
        --                 temp <= "000";
        --         end case;
            else
                case(num) is
                    when "10000000" => 
                        temp <= "000";
                    when "01000000" =>
                        temp <= "001";
                    when "00100000" =>
                        temp <= "010";
                    when "00010000" =>
                        temp <= "011";
                    when "00001000" =>
                        temp <= "100";
                    when "00000100" =>
                        temp <= "101";
                    when "00000010" =>
                        temp <= "110";
                    when "00000001" =>
                        temp <= "111";
                    when others =>
                        temp <= "000";
                end case;
            end if;
            count <= count + 1;
            if count = 1 then
                from_file <= temp;
            elsif count = 2 then
                from_rank <= temp;
            elsif count = 3 then
                to_file <= temp;
            elsif count = 4 then
                to_rank <= temp;
                count <= 0;
                data <= "011" & from_file & from_rank & to_file & to_rank & '0';
                trigger <= '1';
            end if;
        elsif piece_switch /= "0000" then
            debug_led <= '1';
            case(piece_switch) is
                when "1000" =>
                    data <= "1000000000000000";
                when "0100" =>
                    data <= "1000100000000000";
                when "0010" =>
                    data <= "1001000000000000";
                when "0001" =>
                    data <= "1001100000000000";
                when others => 
                   data <=  "1000000000000000";
            end case;
            trigger <= '1';
        else
            debug_led <= '0';
            trigger <= '0';
        end if;
    end process;
  
    -----display set_level-----
    DISPLAY_SET_LEVEL : process(set_level)
    begin
        case(set_level) is
            when "000" =>
                set_level_LED <= "0110000";
            when "001" =>
                set_level_LED <= "1101101";
            when "010" =>
                set_level_LED <= "1111001";
            when "011" =>
                set_level_LED <= "0110011";
            when "100" => 
                set_level_LED <= "1011011";
				when others=>
				 set_level_LED <= "0000000";
        end case;
    end process;
       
end Behavioral;
                    
            
