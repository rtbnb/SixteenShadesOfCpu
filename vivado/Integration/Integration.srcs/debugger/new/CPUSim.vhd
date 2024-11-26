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
        btn0 : in STD_LOGIC;
        btn1 : in STD_LOGIC;
        btn2 : in STD_LOGIC;
        btn3 : in STD_LOGIC;
        clk100mhz_in : in STD_LOGIC;
        fault_reset : in STD_LOGIC;
        g : out STD_LOGIC_VECTOR ( 3 downto 0 );
        h_sync : out STD_LOGIC;
        ioe : out STD_LOGIC;
        led0 : out STD_LOGIC;
        led1 : out STD_LOGIC;
        led2 : out STD_LOGIC;
        led3 : out STD_LOGIC;
        r : out STD_LOGIC_VECTOR ( 3 downto 0 );
        v_sync : out STD_LOGIC
    );
    end component main_wrapper;
    signal RX_UART_IN : STD_LOGIC := '1';
    signal Reset : STD_LOGIC := '0';
    signal TX_UART_OUT : STD_LOGIC;
    signal b : STD_LOGIC_VECTOR ( 3 downto 0 );
    signal btn0 : STD_LOGIC;
    signal btn1 : STD_LOGIC;
    signal btn2 : STD_LOGIC;
    signal btn3 : STD_LOGIC;
    signal clk100mhz_in : STD_LOGIC := '0';
    signal debug_mock_clk : STD_LOGIC := '0';
    signal debug_reset : STD_LOGIC := '0';
    signal fault_reset : STD_LOGIC := '0';
    signal g : STD_LOGIC_VECTOR ( 3 downto 0 );
    signal h_sync : STD_LOGIC;
    signal ioe : STD_LOGIC;
    signal led0 : STD_LOGIC;
    signal led1 : STD_LOGIC;
    signal led2 : STD_LOGIC;
    signal led3 : STD_LOGIC;
    signal r : STD_LOGIC_VECTOR ( 3 downto 0 );
    signal v_sync : STD_LOGIC;
    
begin
    EOT: main_wrapper port map(
        RX_UART_IN => RX_UART_IN,
        Reset => Reset,
        TX_UART_OUT => TX_UART_OUT,
        b => b,
        btn0 => btn0,
        btn1 => btn1,
        btn2 => btn2,
        btn3 => btn3,
        clk100mhz_in => clk100mhz_in,
        fault_reset => fault_reset,
        g => g,
        h_sync => h_sync,
        ioe => ioe,
        led0 => led0,
        led1 => led1,
        led2 => led2,
        led3 => led3,
        r => r,
        v_sync => v_sync
    );

    clk100mhz_in <= not clk100mhz_in after 5 ns;
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
wait for 1100 ns;
RX_UART_IN <= '1';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '1';
wait for 1100 ns;
RX_UART_IN <= '1';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '1';
wait for 1100 ns;
-- start addr
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '1';
wait for 1100 ns;
-- start addr
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '1';
wait for 1100 ns;
-- start data
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '1';
wait for 1100 ns;
-- start data
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '1';
wait for 1100 ns;
wait for 60000ns;
-- next instruction

-- start
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '1';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '1';
wait for 1100 ns;
RX_UART_IN <= '1';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '1';
wait for 1100 ns;
-- start addr
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '1';
wait for 1100 ns;
-- start addr
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '1';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '1';
wait for 1100 ns;
-- start data
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '1';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '1';
wait for 1100 ns;
-- start data
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '1';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '1';
wait for 1100 ns;
wait for 60000ns;
-- next instruction

-- start
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '1';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '1';
wait for 1100 ns;
RX_UART_IN <= '1';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '1';
wait for 1100 ns;
-- start addr
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '1';
wait for 1100 ns;
-- start addr
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '1';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '1';
wait for 1100 ns;
-- start data
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '1';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '1';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '1';
wait for 1100 ns;
-- start data
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '1';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '1';
wait for 1100 ns;
wait for 60000ns;
-- next instruction

-- start
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '1';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '1';
wait for 1100 ns;
RX_UART_IN <= '1';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '1';
wait for 1100 ns;
-- start addr
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '1';
wait for 1100 ns;
-- start addr
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '1';
wait for 1100 ns;
RX_UART_IN <= '1';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '1';
wait for 1100 ns;
-- start data
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '1';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '1';
wait for 1100 ns;
-- start data
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '1';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '1';
wait for 1100 ns;
wait for 60000ns;
-- next instruction

-- start
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '1';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '1';
wait for 1100 ns;
RX_UART_IN <= '1';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '1';
wait for 1100 ns;
-- start addr
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '1';
wait for 1100 ns;
-- start addr
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '1';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '1';
wait for 1100 ns;
-- start data
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '1';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '1';
wait for 1100 ns;
RX_UART_IN <= '1';
wait for 1100 ns;
-- start data
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '1';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '1';
wait for 1100 ns;
wait for 60000ns;
-- next instruction

-- start
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '1';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '0';
wait for 1100 ns;
RX_UART_IN <= '1';
wait for 1100 ns;



        
        wait;
       

    end process write_iram;

end Behavioral;
