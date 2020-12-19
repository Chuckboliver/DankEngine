
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
entity move_7seg_decoder is

    generic(
        CLKS_PER_Round:integer:= 2083
    );
    Port(
	 data_move:in STD_LOGIC_VECTOR (15 downto 0);

        clock:in std_logic; 
        out_7seg:out STD_LOGIC_VECTOR (6 downto 0);
		  nodata:in  STD_LOGIC;
        common_7seg_FPGA:out STD_LOGIC_VECTOR (3 downto 0)
        
    );
end move_7seg_decoder;

architecture Behavioral of move_7seg_decoder is
    type all_States is(first, second,third,forth);
    signal state : all_States:=first;
    signal Clk_Count:integer range 0 to CLKS_PER_Round-1:=0;
	   signal first_Move_IN: STD_LOGIC_VECTOR (2 downto 0):=(others=>'0');
     signal second_Move_IN: STD_LOGIC_VECTOR (2 downto 0):=(others=>'0');
       signal third_Move_IN: STD_LOGIC_VECTOR (2 downto 0):=(others=>'0');
       signal forth_Move_IN:STD_LOGIC_VECTOR (2 downto 0):=(others=>'0');

begin
process(clock)
 begin
 
 first_Move_IN<=data_move(12)&data_move(11)&data_move(10);
 second_Move_IN<=data_move(9)&data_move(8)&data_move(7);
 third_Move_IN<=data_move(6)&data_move(5)&data_move(4);
 forth_Move_IN<=data_move(3)&data_move(2)&data_move(1);
        if rising_edge(clock) then
		  if nodata='1' then
		  common_7seg_FPGA<="1111";
		  out_7seg<="0000000";
		  else	
        case state is
            when first =>
                if Clk_Count<CLKS_PER_Round-1 then
                    Clk_Count<=Clk_Count+1;
                    common_7seg_FPGA<="0111";
                    case first_Move_IN is
                        when "000"=> 
                        out_7seg<="1110111";
                        when "001"=> 
                        out_7seg<="0011111";
                        when "010"=> 
                        out_7seg<="1001110";
                        when "011"=> 
                        out_7seg<="0111101";
                        when "100"=> 
                        out_7seg<="1001111";
                        when "101"=> 
                        out_7seg<="1000111";
                        when "110"=> 
                        out_7seg<="1111011";
                        when "111"=> 
                        out_7seg<="0110111";
								when others=>
									out_7seg<="0000000";
                        end case;
                else
                    Clk_Count<=0;
                    state<=second;
                end if;
            when second=>
            if Clk_Count<CLKS_PER_Round-1 then
                Clk_Count<=Clk_Count+1;
                common_7seg_FPGA<="1011";
                case second_Move_IN is
                    when "000"=> 
                    out_7seg<="0110000";
                    when "001"=> 
                    out_7seg<="1101101";
                    when "010"=> 
                    out_7seg<="1111001";
                    when "011"=> 
                    out_7seg<="0110011";
                    when "100"=> 
                    out_7seg<="1011011";
                    when "101"=> 
                    out_7seg<="1011111";
                    when "110"=> 
                    out_7seg<="1110000";
                    when "111"=> 
                    out_7seg<="1111111";
					when others=>
						out_7seg<="0000000";
                    end case;
            else
                Clk_Count<=0;
                state<=third;
            end if;
            when third=>
                if Clk_Count<CLKS_PER_Round-1 then
                    Clk_Count<=Clk_Count+1;
                    common_7seg_FPGA<="1101";
                    case third_Move_IN is
                        when "000"=> 
                        out_7seg<="1110111";
                        when "001"=> 
                        out_7seg<="0011111";
                        when "010"=> 
                        out_7seg<="1001110";
                        when "011"=> 
                        out_7seg<="0111101";
                        when "100"=> 
                        out_7seg<="1001111";
                        when "101"=> 
                        out_7seg<="1000111";
                        when "110"=> 
                        out_7seg<="1111011";
                        when "111"=> 
                        out_7seg<="0110111";
								when others=>
									out_7seg<="0000000";
                        end case;
                else
                    Clk_Count<=0;
                    state<=forth;
                end if;
                when forth=>
                    if Clk_Count<CLKS_PER_Round-1 then
                        Clk_Count<=Clk_Count+1;
                        common_7seg_FPGA<="1110";
                case forth_Move_IN is
                    when "000"=> 
                    out_7seg<="0110000";
                    when "001"=> 
                    out_7seg<="1101101";
                    when "010"=> 
                    out_7seg<="1111001";
                    when "011"=> 
                    out_7seg<="0110011";
                    when "100"=> 
                    out_7seg<="1011011";
                    when "101"=> 
                    out_7seg<="1011111";
                    when "110"=> 
                    out_7seg<="1110000";
                    when "111"=> 
                    out_7seg<="1111111";
						when others=>
							out_7seg<="0000000";
                     end case;
                    else
                        Clk_Count<=0;
                        state<=first;
                    end if;
                end case;
					 
					 end if;
            end if;
end process;
end Behavioral;

