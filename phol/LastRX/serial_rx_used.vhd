library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

entity serial_rx is 
    generic (
        CLKS_PER_BIT : integer := 2083
    );
    port (
        clock:in std_logic;
        rx:in std_logic;
        data: out std_logic_vector(15 downto 0);
        data_done: out std_logic

        );
end serial_rx;

architecture Behavioral of serial_rx is
    type all_States is(Idle, RX_Start_Bit, RX_Data_Bits,
    RX_Stop_Bit, Cleanup);
    signal state : all_States:=Idle;
    signal RX_Data_R : std_logic := '0';
    signal RX_Data   : std_logic := '0';
    signal Clk_Count : integer range 0 to CLKS_PER_BIT-1 := 0;
    signal Bit_Index : integer range 0 to 15 := 0;
    signal RX_Data_Output: std_logic_vector(15 downto 0) := (others => '0');
    signal rx_data_done:std_logic:='0';

	 
begin
    p_SAMPLE : process (clock)
    begin
      if rising_edge(clock) then
        RX_Data_R <= rx;
        RX_Data   <= RX_Data_R;
      end if;
    end process p_SAMPLE;

    UART_RX:process(clock)
	 
    begin 
        if rising_edge(clock) then

                case state is 
                when Idle=>
                    rx_data_done<='0';
                    Clk_Count<=0;
                    Bit_Index<=0;
                    if RX_Data='0' then
                        state<=RX_Start_Bit;
                    else
                        state<=Idle;
                    end if;

                when RX_Start_Bit=>
                    if Clk_Count=(CLKS_PER_BIT-1)/2 then
                        if RX_Data='0' then
                            Clk_Count<=0;
                            state<=RX_Data_Bits;
                        else
                            state<=Idle;
								end if;
                    else
                        Clk_Count<=Clk_Count+1;
                        state<=RX_Start_Bit;
                    end if;
                when RX_Data_Bits=>
                    if Clk_Count<= CLKS_PER_BIT-1 then
                        Clk_Count<=Clk_Count + 1;
                        state<=RX_Data_Bits;
                    else
                        Clk_Count<=0;
                        RX_Data_Output(Bit_Index)<=RX_Data;
                        if Bit_Index<7 then
                            Bit_Index<=Bit_Index+1;
                            state<=RX_Data_Bits;
                        elsif Bit_Index=7 then
                            Bit_Index<=Bit_Index+1;
                            state<=RX_Stop_Bit;
                        elsif Bit_Index>7 and Bit_Index<15 then
                            Bit_Index<=Bit_Index+1;
                            state<=RX_Data_Bits;
                        else
                            Bit_Index<=0;
                            state<=RX_Stop_Bit;
                        end if;
                    end if;
                when RX_Stop_Bit=>
                    if Clk_Count<CLKS_PER_BIT-1 then
                        Clk_Count<=Clk_Count+1;
                        state<=RX_Stop_Bit;
                    elsif Bit_Index=8  then
                        state<=RX_Start_Bit;
                    else
                        rx_data_done<='1';
                        Clk_Count<=0;
                        state<=Cleanup;
							end if;
					when Cleanup=>
						state<=Idle;
						rx_data_done<='0';
                when others=>
                    state<=Idle;
                end case;
            end if;
        end process UART_RX;
		  
		
		  
		  data<=RX_Data_Output(15 downto 0);
		  
        data_done<=rx_data_done;
    end Behavioral;


                


