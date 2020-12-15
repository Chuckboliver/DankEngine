library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

entity 12bits_to_7seg is
    generic(
        CLKS_PER_Round:integer:= 305
    );
    Port(
        first_Move_IN:in STD_LOGIC_VECTOR (2 downto 0);
        second_Move_IN:in STD_LOGIC_VECTOR (2 downto 0);
        third_Move_IN:in STD_LOGIC_VECTOR (2 downto 0);
        forth_Move_IN:in STD_LOGIC_VECTOR (2 downto 0);
        clk:in std_logic; 
        out_7seg:out STD_LOGIC_VECTOR (6 downto 0);
        common:out STD_LOGIC_VECTOR (3 downto 0)
        
    );
architecture Behavioral of 12bits_to_7seg is
    type all_States is(first, second,third,forth);
    signal state : all_States:=first;
    signal Clk_Count:integer range 0 to CLKS_PER_Round-1:=0
begin
    decoder:process(clock)
    begin
        if rising_edge(clock) then
        case state is
            when first =>
                if Clk_Count<CLKS_PER_Round-1 then
                    Clk_Count<=Clk_Count+1;
                    common=>"0111";
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
                common=>"1011"
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
                    common=>"1101"
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
                        common=>"1110"
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
        end process;
end Behavioral;
            
                        

