
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity checkEmptyRegister16bits is
  port (
    para_in : in std_logic_vector(15 downto 0);
		noData:out std_logic
  );
end checkEmptyRegister16bits;

architecture Behavioral of checkEmptyRegister16bits is

begin
process(para_in) 
begin
if para_in="0000000000000000" then
	noData<='1';
else
	noData<='0';
end if ;

end process;
end Behavioral;

