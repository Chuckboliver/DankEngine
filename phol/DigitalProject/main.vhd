library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;


entity main is
    port (
        clock:in std_logic:='0';
        rx:in std_logic:='0';
        out_7seg:out STD_LOGIC_VECTOR (6 downto 0):=(others => '0');
        common:out STD_LOGIC_VECTOR (3 downto 0):=(others => '0')
        );
end main;

architecture Behavioral of main is

component serial_rx is 
    generic (
        CLKS_PER_BIT : integer := 2083
    );
    port (
        clock:in std_logic;
        rx:in std_logic;
        data: out std_logic_vector(15 downto 0);
        data_done: out std_logic
        );
end component serial_rx;


component demux1_3 is 
port(
 data_done:in std_logic;
 demux_in : in std_logic_vector(11 downto 0);
 S0,S1,S2: in STD_LOGIC;
 
 Move: out std_logic_vector(11 downto 0);
 clk_Move_reg:out std_logic;
 clk_Error_reg:out std_logic:='0';
  clk_Promote_reg:out std_logic:='0';
 Error:out std_logic_vector(5 downto 0):=(others=>'0');
 Promote:out std_logic_vector(4 downto 0):=(others=>'0')
 );
end component demux1_3;

component move_12bits_to_7seg is 
    generic(
        CLKS_PER_Round:integer:= 305
    );
    Port(
        first_Move_IN:in STD_LOGIC_VECTOR (2 downto 0):=(others=>'0');
        second_Move_IN:in STD_LOGIC_VECTOR (2 downto 0):=(others=>'0');
        third_Move_IN:in STD_LOGIC_VECTOR (2 downto 0):=(others=>'0');
        forth_Move_IN:in STD_LOGIC_VECTOR (2 downto 0):=(others=>'0');
        clock:in std_logic:='0'; 
        out_7seg:out STD_LOGIC_VECTOR (6 downto 0):=(others=>'0');
        common:out STD_LOGIC_VECTOR (3 downto 0):=(others=>'0')
        
    );
end component move_12bits_to_7seg;

component shift_register12 is 
Port ( reg_in   : in  STD_LOGIC_VECTOR(11 downto 0);
            CLR :in STD_LOGIC;
           CLK : in  STD_LOGIC;
           reg_out : out STD_LOGIC_VECTOR (11 downto 0));

end component shift_register12;


signal data_out_to_sel:std_logic_vector(2 downto 0);
signal data_out_to_data:std_logic_vector(11 downto 0);
signal data_done:std_logic;
signal move_to_12reg:std_logic_vector(11 downto 0);
signal clk_move_reg:std_logic;
signal move_to_decoder:std_logic_vector(11 downto 0);

constant g_CLKS_PER_BIT : integer := 2083;
constant g_CLKS_Scan_Round : integer := 305;

begin


	  
demux1_3_ins:demux1_3
    port map (
	data_done=>data_done,
	demux_in=>data_out_to_data,
		S0=>data_out_to_sel(0),
	S1=>data_out_to_sel(1),
	S2=>data_out_to_sel(2),
	 Move=>move_to_12reg,
	 clk_Move_reg=>clk_move_reg,
 clk_Error_reg=>open,
  clk_Promote_reg=>open,
 Error=>open,
 Promote=>open
      );

serial_rx_ins:serial_rx
   generic map (
	CLKS_PER_BIT=>g_CLKS_PER_BIT
      )
port map (
		
		rx=>rx,
		clock=>clock,
		data_done=>data_done,
		data(4 downto 0)=>data_out_to_data(11 downto 7),
		data(7 downto 5)=>data_out_to_sel(2 downto 0),
		data(15 downto 9)=>data_out_to_data(6 downto 0)

      );
shift_register12_ins:shift_register12

    port map (
	 reg_in=>move_to_12reg,
	 CLR=>'0',
	 CLK=>clk_move_reg,
	 reg_out=>move_to_decoder
      );


move_12bits_to_7seg_ins:move_12bits_to_7seg
		generic map (
		CLKS_PER_Round=>g_CLKS_Scan_Round 
      )
		
    port map (
	 first_Move_IN=>move_to_decoder(11 downto 9),
	 second_Move_IN=>move_to_decoder(8 downto 6),
	 third_Move_IN=>move_to_decoder(5 downto 3),
	 forth_Move_IN=>move_to_decoder(2 downto 0),
	 clock=>clock,
	 out_7seg=>out_7seg,
		common=>common
      );
		
end Behavioral;

