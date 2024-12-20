----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.11.2024 19:08:02
-- Design Name: 
-- Module Name: DebuggerIRAMWriteSim - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity CPUSim is
    generic (
        rx_instruction: std_logic_vector(7 downto 0) := x"31";
        rx_address: std_logic_vector(15 downto 0) := x"0000";
        rx_data: std_logic_vector(15 downto 0) := x"40F0"
    );
  --Port ();
end CPUSim;

architecture Behavioral of CPUSim is
    component main_wrapper is port (
        RX_UART_IN : in STD_LOGIC;
        Reset : in STD_LOGIC;
        TX_UART_OUT : out STD_LOGIC;
        b : out STD_LOGIC_VECTOR ( 3 downto 0 );
        btn00 : in STD_LOGIC;
        btn01 : in STD_LOGIC;
        btn02 : in STD_LOGIC;
        btn03 : in STD_LOGIC;
        btn04 : in STD_LOGIC;
        btn05 : in STD_LOGIC;
        btn06 : in STD_LOGIC;
        btn07 : in STD_LOGIC;
        clk100mhzIn : in STD_LOGIC;
        fault_reset : in STD_LOGIC;
        g : out STD_LOGIC_VECTOR ( 3 downto 0 );
        h_sync : out STD_LOGIC;
        ioe : out STD_LOGIC;
        led00 : out STD_LOGIC;
        led01 : out STD_LOGIC;
        led02 : out STD_LOGIC;
        led03 : out STD_LOGIC;
        r : out STD_LOGIC_VECTOR ( 3 downto 0 );
        rgb0 : out STD_LOGIC_VECTOR ( 2 downto 0 );
        rgb1 : out STD_LOGIC_VECTOR ( 2 downto 0 );
        rgb2 : out STD_LOGIC_VECTOR ( 2 downto 0 );
        rgb3 : out STD_LOGIC_VECTOR ( 2 downto 0 );
        v_sync : out STD_LOGIC
    );
    end component main_wrapper;
    signal RX_UART_IN : STD_LOGIC := '1';
    signal Reset : STD_LOGIC := '0';
    signal TX_UART_OUT : STD_LOGIC;
    signal b : STD_LOGIC_VECTOR ( 3 downto 0 );
    signal btn00 : STD_LOGIC;
    signal btn01 : STD_LOGIC;
    signal btn02 : STD_LOGIC;
    signal btn03 : STD_LOGIC;
    signal btn04 : STD_LOGIC := '0';
    signal btn05 : STD_LOGIC := '0';
    signal btn06 : STD_LOGIC := '0';
    signal btn07 : STD_LOGIC := '0';
    signal clk100mhzIn : STD_LOGIC := '0';
    signal debug_mock_clk : STD_LOGIC := '0';
    signal debug_reset : STD_LOGIC := '0';
    signal fault_reset : STD_LOGIC := '0';
    signal g : STD_LOGIC_VECTOR ( 3 downto 0 );
    signal h_sync : STD_LOGIC;
    signal ioe : STD_LOGIC;
    signal led00 : STD_LOGIC;
    signal led01 : STD_LOGIC;
    signal led02 : STD_LOGIC;
    signal led03 : STD_LOGIC;
    signal r : STD_LOGIC_VECTOR ( 3 downto 0 );
    signal rgb0 : STD_LOGIC_VECTOR ( 2 downto 0 );
    signal rgb1 : STD_LOGIC_VECTOR ( 2 downto 0 );
    signal rgb2 : STD_LOGIC_VECTOR ( 2 downto 0 );
    signal rgb3 : STD_LOGIC_VECTOR ( 2 downto 0 );
    signal v_sync : STD_LOGIC;
    
begin
    EOT: main_wrapper port map(
        RX_UART_IN => RX_UART_IN,
        Reset => Reset,
        TX_UART_OUT => TX_UART_OUT,
        b => b,
        btn00 => btn00,
        btn01 => btn01,
        btn02 => btn02,
        btn03 => btn03,
        btn04 => btn04,
        btn05 => btn05,
        btn06 => btn06,
        btn07 => btn07,
        clk100mhzIn => clk100mhzIn,
        fault_reset => fault_reset,
        g => g,
        h_sync => h_sync,
        ioe => ioe,
        led00 => led00,
        led01 => led01,
        led02 => led02,
        led03 => led03,
        r => r,
        rgb0 => rgb0,
        rgb1 => rgb1,
        rgb2 => rgb2,
        rgb3 => rgb3,
        v_sync => v_sync
    );

    clk100mhzIn <= not clk100mhzIn after 5 ns;
    --debug_mock_clk <= not debug_mock_clk after 5 ns;
    
    init: process is
    begin
        Reset <= '1';
        wait for 5 ns;
        Reset <= '0';
        wait for 600ns;
        
        wait;
    end process init;
    
    write_iram: process is
    begin
        wait for 600ns;
-- start
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
-- start addr
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
-- start addr
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
-- start data
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
-- start data
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
wait for 500000ns;
-- next instruction

-- start
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 500000ns;
-- start
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
-- start addr
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
-- start addr
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
-- start data
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
-- start data
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
wait for 500000ns;
-- next instruction

-- start
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 500000ns;
-- start
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
-- start addr
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
-- start addr
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
-- start data
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
-- start data
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
wait for 500000ns;
-- next instruction

-- start
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 500000ns;
-- start
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
-- start addr
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
-- start addr
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
-- start data
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
-- start data
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
wait for 500000ns;
-- next instruction

-- start
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 500000ns;
-- start
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
-- start addr
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
-- start addr
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
-- start data
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
-- start data
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
wait for 500000ns;
-- next instruction

-- start
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 500000ns;
-- start
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
-- start addr
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
-- start addr
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
-- start data
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
-- start data
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
wait for 500000ns;
-- next instruction

-- start
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 500000ns;
-- start
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
-- start addr
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
-- start addr
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
-- start data
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
-- start data
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
wait for 500000ns;
-- next instruction

-- start
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 500000ns;
-- start
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
-- start addr
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
-- start addr
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
-- start data
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
-- start data
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
wait for 500000ns;
-- next instruction

-- start
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 500000ns;
-- start
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 500000ns;
-- start
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '0';
wait for 8680 ns;
RX_UART_IN <= '1';
wait for 500000ns;


        wait;
       

    end process write_iram;

end Behavioral;
