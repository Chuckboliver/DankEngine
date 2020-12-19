library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

entity shift_register12 is
    Port ( reg_in   : in  STD_LOGIC_VECTOR(11 downto 0);
            CLR :in STD_LOGIC;
           CLK : in  STD_LOGIC;
           first_reg_out : out STD_LOGIC_VECTOR (2 downto 0);
			  second_reg_out : out STD_LOGIC_VECTOR (2 downto 0);
			  third_reg_out : out STD_LOGIC_VECTOR (2 downto 0);
			  forth_reg_out : out STD_LOGIC_VECTOR (2 downto 0)
			  );
end shift_register12;

architecture Behavioral of shift_register12 is
    signal     r_first_reg_out :STD_LOGIC_VECTOR (2 downto 0);
	signal	  r_second_reg_out : STD_LOGIC_VECTOR (2 downto 0);
	signal	  r_third_reg_out : STD_LOGIC_VECTOR (2 downto 0);
	signal  r_forth_reg_out : STD_LOGIC_VECTOR (2 downto 0);
    signal r_reg_in:STD_LOGIC_VECTOR(11 downto 0) := reg_in ;
begin
    process (CLK,CLR)
    begin
        if CLR='1' then
            r_first_reg_out<= (others=>'0');
				r_second_reg_out<= (others=>'0');
				r_third_reg_out<= (others=>'0');
				r_forth_reg_out<= (others=>'0');
        elsif rising_edge(CLK) then
            r_first_reg_out<= r_reg_in(11 downto 9);
				r_second_reg_out<= r_reg_in(8 downto 6);
				r_third_reg_out<= r_reg_in(5 downto 3);
				r_forth_reg_out<= r_reg_in(2 downto 0);
        end if;

    end process;
                first_reg_out<= r_first_reg_out;
				second_reg_out<= r_second_reg_out;
				third_reg_out<= r_third_reg_out;
				forth_reg_out<= r_forth_reg_out;


end Behavioral;