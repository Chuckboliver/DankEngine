library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

entity shift_register12 is
    Port ( reg_in   : in  STD_LOGIC_VECTOR(11 downto 0);
            CLR :in STD_LOGIC;
           CLK : in  STD_LOGIC;
           reg_out : out STD_LOGIC_VECTOR (11 downto 0));
end shift_register12;

architecture Behavioral of shift_register12 is

    signal shift_out : STD_LOGIC_VECTOR(11 downto 0);
    signal shift_in:STD_LOGIC_VECTOR(11 downto 0) := reg_in  ;
begin
    process (CLK)
    begin
        if CLR='1' then
            reg_out<=(others => '0');
        elsif rising_edge(Clk) then
            shift_out<= shift_in;
        end if;

    end process;
    
    reg_out <= shift_out;

end Behavioral;