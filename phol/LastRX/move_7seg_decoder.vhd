
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
entity decoder_7seg is

    generic(
        CLKS_PER_Round:integer:= 2083
    );
    Port(

        box1 : IN STD_LOGIC_VECTOR(1 downto 0);
        box2 : IN STD_LOGIC_VECTOR(1 downto 0);
        box3 : IN STD_LOGIC_VECTOR(1 downto 0);
        box4 : IN STD_LOGIC_VECTOR(1 downto 0);
        box5 : IN STD_LOGIC_VECTOR(1 downto 0);
        box6 : IN STD_LOGIC_VECTOR(1 downto 0);
        box7 : IN STD_LOGIC_VECTOR(1 downto 0);
        box8 : IN STD_LOGIC_VECTOR(1 downto 0);
        box9 : IN STD_LOGIC_VECTOR(1 downto 0);

        clock:in std_logic; 

        common_7seg:out STD_LOGIC_VECTOR (8 downto 0);

        segment_seven:out STD_LOGIC_VECTOR (6 downto 0)
        
    );
end decoder_7seg;

architecture Behavioral of decoder_7seg is
    type all_States is(first, second,third,forth,fifth,sixth,seventh,eighth,nineth);
    signal state : all_States:=first;
    signal Clk_Count:integer range 0 to CLKS_PER_Round-1:=0;

begin
process(clock)
 begin
        if rising_edge(clock) then
        case state is
            when first=>
            if Clk_Count<CLKS_PER_Round-1 then
                state<=first;
                common_7seg<="100000000";
                if box1="00"then
                    segment_seven<="0000000";
                elsif box1="10" then
                    segment_seven<="0110111";
                elsif box1="01" then
                    segment_seven<="1111110";
                else
                    segment_seven<="0000000";
                end if;
            else
                Clk_Count<= 0;
                state<=second;
            end if;
            when second=>
            if Clk_Count<CLKS_PER_Round-1 then
                state<=second;
                    common_7seg<="010000000";
                if box2="00"then
                    segment_seven<="0000000";
                elsif box2="10" then
                    segment_seven<="0110111";
                elsif box2="01" then
                    segment_seven<="1111110";
                else
                    segment_seven<="0000000";
                end if;
            else
                Clk_Count<= 0;
                state<=third;
            end if;
        when third=>
            if Clk_Count<CLKS_PER_Round-1 then
                state<=third;
                    common_7seg<="001000000";
                if box3="00"then
                    segment_seven<="0000000";
                elsif box3="10" then
                    segment_seven<="0110111";
                elsif box3="01" then
                    segment_seven<="1111110";
                else
                    segment_seven<="0000000";
                end if;
            else
                Clk_Count<= 0;
                state<=forth;
                end if;
            when forth=>
                if Clk_Count<CLKS_PER_Round-1 then
                    state<=forth;
                        common_7seg<="000100000";
                    if box4="00"then
                        segment_seven<="0000000";
                    elsif box4="10" then
                        segment_seven<="0110111";
                    elsif box4="01" then
                        segment_seven<="1111110";
                    else
                        segment_seven<="0000000";
                    end if;
                else
                    Clk_Count<= 0;
                    state<=fifth;
                end if;
            when fifth=>
            if Clk_Count<CLKS_PER_Round-1 then
                state<=fifth;
                common_7seg<="000010000";
                if box5="00"then
                segment_seven<="0000000";
                elsif box5="10" then
                segment_seven<="0110111";
                elsif box5="01" then
                segment_seven<="1111110";
                end if;
             else
                segment_seven<="0000000";
             end if;
            else
                Clk_Count<= 0;
                state<=sixth;
        end if;

        when sixth=>
        if Clk_Count<CLKS_PER_Round-1 then
            state<=sixth;
            common_7seg<="000001000";
            if box6="00"then
            segment_seven<="0000000";
            elsif box6="10" then
            segment_seven<="0110111";
            elsif box6="01" then
            segment_seven<="1111110";
            end if;
         else
            segment_seven<="0000000";
         end if;
        else
            Clk_Count<= 0;
            state<=seventth;
            end if;
        when seventh=>
            if Clk_Count<CLKS_PER_Round-1 then
                state<=seventh;
                common_7seg<="00000100";
                if box7="00"then
                segment_seven<="0000000";
                elsif box7="10" then
                segment_seven<="0110111";
                elsif box7="01" then
                segment_seven<="1111110";
             else
                segment_seven<="0000000";
             end if;
            else
                Clk_Count<= 0;
                state<=eighth;
    

             end if;

             when eighth=>
             if Clk_Count<CLKS_PER_Round-1 then
                state<= eighth;
                 common_7seg<="000000010";
                 if box8="00"then
                 segment_seven<="0000000";
                 elsif box8="10" then
                 segment_seven<="0110111";
                 elsif box8="01" then
                 segment_seven<="1111110";
              else
                 segment_seven<="0000000";
              end if;
             else
                 Clk_Count<= 0;
                 state<=nineth;
     
 
              end if;
              when nineth=>
              if Clk_Count<CLKS_PER_Round-1 then
                state<=nineth;
                  common_7seg<="000000001";
                  if box9="00"then
                  segment_seven<="0000000";
                  elsif box9="10" then
                  segment_seven<="0110111";
                  elsif box9="01" then
                  segment_seven<="1111110";
               else
                  segment_seven<="0000000";
               end if;
              else
                  Clk_Count<= 0;
                  state<=first;
      
  
               end if;


end process;
end Behavioral;

