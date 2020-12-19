library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity serial_gen is 
    generic (
        CLKS_PER_BIT : integer := 2083 ;   -- Needs to be set correctly
		  CLKS_BUTTON: integer := 2
        );
		  
    Port (
        data: in std_logic_vector(15 downto 0);
        start,clock: in std_logic;
        tx: out std_logic
    );
end serial_gen;

architecture Behavioral of serial_gen is
    type all_States is (Idle, TX_Start_Bit, TX_Data_Bits,
    TX_Stop_Bit, Cleanup);

    signal state : all_States:=Idle;
    signal Clk_Count : integer range 0 to CLKS_PER_BIT-1 := 0;
    signal Bit_Index : integer range 0 to 15 := 0;  -- 16 Bits Total
    signal TX_Data   : std_logic_vector(15 downto 0) := (others => '0');
    signal SEL_CLR :std_logic_vector(2 downto 0):=data(7)&data(6)&data(5);
	 signal intruc_set:std_logic_vector(2 downto 0):=data(7)&data(6)&data(5);
	 signal ClkCountFor_Button: integer range 0 to CLKS_BUTTON-1 := 0;
begin
    UART_TX : process(clock)
    begin 
        if rising_edge(clock) then
				if intruc_set="011" then
            case state is
                when Idle=>
               
                    tx<='1';
                    Clk_Count<=0;
                    Bit_Index<=0;
                    if start='1' and ClkCountFor_Button=0 then
                        TX_Data <= data;
                        state<=TX_Start_Bit;
								ClkCountFor_Button<=ClkCountFor_Button+1;
                    else
                        state<=Idle;
								ClkCountFor_Button<=ClkCountFor_Button+1;
							
                    end if;

								if ClkCountFor_Button=CLKS_BUTTON then
									ClkCountFor_Button<=0;
							end if;

                when TX_Start_Bit=>
                    tx<='0';
                    if Clk_Count< CLKS_PER_BIT-1 then
                        Clk_Count<=Clk_Count+1;
                        state<=TX_Start_Bit;
                    else
                        Clk_Count<=0;
                        state<=TX_Data_Bits;
                    end if;

                when TX_Data_Bits=>
					 
                    tx<=TX_Data(Bit_Index);
                    if Clk_Count< CLKS_PER_BIT-1 then
                        Clk_Count<=Clk_Count+1;
                        state<=TX_Data_Bits;
                    else
                        Clk_Count<=0;
								if Bit_Index=7 then 
									state<=TX_Stop_Bit;
                        elsif Bit_Index<15 then
                            Bit_Index<=Bit_Index+1;
                            state<=TX_Data_Bits;
                        else
                            Bit_Index<=0;
                            state<=TX_Stop_Bit;
                        end if;
                    end if;

                when TX_Stop_Bit=>
                    tx<='1';
                    if Clk_Count< CLKS_PER_BIT-1 then
                        Clk_Count<=Clk_Count+1;
                        state<=TX_Stop_Bit;
                    else
                        Clk_Count<=0;
								if Bit_Index=7 then
									state<=TX_Start_Bit;
									Bit_Index<=Bit_Index+1;
								else
									state<=Cleanup;
                        end if;
                    end if;
						when Cleanup =>
						state   <= Idle;
                when others=>
                    state<=Idle;
            end case;
			else
				case state is
                when Idle=>
                    clear_Promote<='0';
                    clear_Move<='0';
                    clear_level<='0';
                    clear_Color<='0';
                    clear_NewGame<='0';
                    tx<='1';
                    Clk_Count<=0;
                    Bit_Index<=0;
                    if start='1' and ClkCountFor_Button=0 then
                        TX_Data <= data;
                        state<=TX_Start_Bit;
								ClkCountFor_Button<=ClkCountFor_Button+1;
                    else
                        state<=Idle;
								ClkCountFor_Button<=ClkCountFor_Button+1;
                    end if;
						  
						  	if ClkCountFor_Button=CLKS_BUTTON then
									ClkCountFor_Button<=0;
							end if;
                when TX_Start_Bit=>
                    tx<='0';
                    if Clk_Count< CLKS_PER_BIT-1 then
                        Clk_Count<=Clk_Count+1;
                        state<=TX_Start_Bit;
                    else
                        Clk_Count<=0;
                        state<=TX_Data_Bits;
                    end if;

                when TX_Data_Bits=>
                    tx<=TX_Data(Bit_Index);
                    if Clk_Count< CLKS_PER_BIT-1 then
                        Clk_Count<=Clk_Count+1;
                        state<=TX_Data_Bits;
                    else
                        Clk_Count<=0;
                        if Bit_Index<7 then
                            Bit_Index<=Bit_Index+1;
                            state<=TX_Data_Bits;
                        else
                            Bit_Index<=0;
                            state<=TX_Stop_Bit;
                        end if;
                    end if;

                when TX_Stop_Bit=>
                    tx<='1';
                    if Clk_Count< CLKS_PER_BIT-1 then
                        Clk_Count<=Clk_Count+1;
                        state<=TX_Stop_Bit;
                    else
                        Clk_Count<=0;
								state<=Cleanup;
                        if (SEL_CLR="000") then
                            clear_NewGame<='1';
                        elsif (SEL_CLR="001") then
                            clear_Color<='1';
                        elsif (SEL_CLR="010") then
                            clear_level<='1';
                        elsif (SEL_CLR="011") then
                            clear_Move<='1';
                        elsif (SEL_CLR="100") then
                            clear_Promote<='1';
                        end if;
                    end if;
					when Cleanup =>
						state   <= Idle;
                when others=>
                    state<=Idle;
            end case;
        end if;
		 end if;
    end process UART_TX;
end Behavioral;

