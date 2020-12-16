----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:58:54 12/16/2020 
-- Design Name: 
-- Module Name:    encoder5to3 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity encoder5to3 is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           D : in  STD_LOGIC;
           E : in  STD_LOGIC;
           sel : out  STD_LOGIC_VECTOR (2 downto 0));
end encoder5to3;

architecture Behavioral of encoder5to3 is

begin
	sel(2) <= (not A) and (not B) and (not C) and (not D);
	sel(1) <= ((not A) and (not B) and (not E)) or ((not A) and (not B) and D) or ((not A) and (not B) and C); 
	sel(0) <= ((not A) and (not C) and D) or ((not A) and B); 
end Behavioral;

