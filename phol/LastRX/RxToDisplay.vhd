
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity RxT0Display is
    generic(
        CLKS_PER_Round:integer:= 2048
    );

port(
inData:in std_logic_vector (15 downto 0);

clock:in std_logic;



move_7seg_Output:out std_logic_vector (7 downto 0);
common_Move_7seg:out std_logic_vector (3 downto 0);

error_Move_LED:out std_logic;
error_Promote_LEDout std_logic;

bot_promote_LED:out std_logic_vector (3 downto 0);

endType_LED:out std_logic_vector (1 downto 0);

whoWin_LED:out std_logic_vector(1 downto 0)





);
end RxT0Display;

architecture Behavioral of RxT0Display is


signal real_data:std_logic_vector (12 downto 0)=:(others=>'0');
signal header:std_logic_vector (2 downto 0)=:(others=>'0');


--- display 7seg
type all_States is(first, second,third,forth);
signal state : all_States:=first;
signal Clk_Count:integer range 0 to CLKS_PER_Round-1:=0
signal first_Move_IN:STD_LOGIC_VECTOR (2 downto 0);
signal second_Move_IN: STD_LOGIC_VECTOR (2 downto 0);
signal third_Move_IN:STD_LOGIC_VECTOR (2 downto 0);
signal forth_Move_IN:STD_LOGIC_VECTOR (2 downto 0);
signal common_7seg:STD_LOGIC_VECTOR(3 downto 0);


--- 



begin

process receiveInput(inData,clock)is

header:=inData(15 downto 13);




case header is
	when "011" =>
	first_Move_IN=:inData(12 downto 10);
	second_Move_IN=:inData(9 downto 7);
	third_Move_IN=:inData(6 downto 4);
	forth_Move_IN=:inData(3 downto 1);
			if rising_edge(clock) then
				case state is
            when first =>
                if Clk_Count<CLKS_PER_Round-1 then
                    Clk_Count<=Clk_Count+1;
                    common_7seg=>"0111";
                    case first_Move_IN is
                        when "000"=> 
                        out_7seg=>"1110111";
                        when "001"=> 
                        out_7seg=>"0011111";
                        when "010"=> 
                        out_7seg=>"1001110";
                        when "011"=> 
                        out_7seg=>"0111101";
                        when "100"=> 
                        out_7seg=>"1001111";
                        when "101"=> 
                        out_7seg=>"1000111";
                        when "110"=> 
                        out_7seg=>"1111011";
                        when "111"=> 
                        out_7seg=>"0110111";
                        end case;
                else
                    Clk_Count<=0;
                    state<=second;
                end if;
            when second=>
            if Clk_Count<CLKS_PER_Round-1 then
                Clk_Count<=Clk_Count+1;
                common_7seg=>"1011"
                case second_Move_IN is
                    when "000"=> 
                    out_7seg=>"1110111";
                    when "001"=> 
                    out_7seg=>"0011111";
                    when "010"=> 
                    out_7seg=>"1001110";
                    when "011"=> 
                    out_7seg=>"0111101";
                    when "100"=> 
                    out_7seg=>"1001111";
                    when "101"=> 
                    out_7seg=>"1000111";
                    when "110"=> 
                    out_7seg=>"1111011";
                    when "111"=> 
                    out_7seg=>"0110111";
                    end case;
            else
                Clk_Count<=0;
                state<=third;
            end if;
            when third=>
                if Clk_Count<CLKS_PER_Round-1 then
                    Clk_Count<=Clk_Count+1;
                    common_7seg=>"1101"
                    case second_Move_IN is
                        when "000"=> 
                        out_7seg=>"1110111";
                        when "001"=> 
                        out_7seg=>"0011111";
                        when "010"=> 
                        out_7seg=>"1001110";
                        when "011"=> 
                        out_7seg=>"0111101";
                        when "100"=> 
                        out_7seg=>"1001111";
                        when "101"=> 
                        out_7seg=>"1000111";
                        when "110"=> 
                        out_7seg=>"1111011";
                        when "111"=> 
                        out_7seg=>"0110111";
                        end case;
                else
                    Clk_Count<=0;
                    state<=forth;
                end if;
                when forth=>
                    if Clk_Count<CLKS_PER_Round-1 then
                        Clk_Count<=Clk_Count+1;
                        common_7seg=>"1110"
                        case second_Move_IN is
                            when "000"=> 
                            out_7seg=>"1110111";
                            when "001"=> 
                            out_7seg=>"0011111";
                            when "010"=> 
                            out_7seg=>"1001110";
                            when "011"=> 
                            out_7seg=>"0111101";
                            when "100"=> 
                            out_7seg=>"1001111";
                            when "101"=> 
                            out_7seg=>"1000111";
                            when "110"=> 
                            out_7seg=>"1111011";
                            when "111"=> 
                            out_7seg=>"0110111";
                            end case;
                    else
                        Clk_Count<=0;
                        state<=first;
                    end if;
                end case;
            end if;
				
				
				
		

end process receiveInput;


common_Move_7seg<=common_7seg;





end Behavioral;

