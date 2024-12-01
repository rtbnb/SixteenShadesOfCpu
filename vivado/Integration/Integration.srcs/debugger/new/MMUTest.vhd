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

entity MMUTestGRAM is
    generic (
        rx_instruction: std_logic_vector(7 downto 0) := x"30";
        rx_address: std_logic_vector(15 downto 0) := x"0000";
        rx_data: std_logic_vector(15 downto 0) := x"40F0"
    );
  --Port ();
end MMUTestGRAM;

architecture Behavioral of MMUTestGRAM is
    component main_wrapper is port (
        RX_UART_IN : in STD_LOGIC;
        Reset : in STD_LOGIC;
        TX_UART_OUT : out STD_LOGIC;
        b : out STD_LOGIC_VECTOR ( 3 downto 0 );
        clk100mhz_in : in STD_LOGIC;
        fault_reset : in STD_LOGIC;
        g : out STD_LOGIC_VECTOR ( 3 downto 0 );
        h_sync : out STD_LOGIC;
        ioe : out STD_LOGIC;
        led : out STD_LOGIC;
        r : out STD_LOGIC_VECTOR ( 3 downto 0 );
        v_sync : out STD_LOGIC
    );
    end component main_wrapper;
    signal RX_UART_IN : STD_LOGIC := '1';
    signal Reset : STD_LOGIC := '0';
    signal TX_UART_OUT : STD_LOGIC;
    signal b : STD_LOGIC_VECTOR ( 3 downto 0 );
    signal clk100mhz_in : STD_LOGIC := '0';
    signal debug_mock_clk : STD_LOGIC := '0';
    signal debug_reset : STD_LOGIC := '0';
    signal fault_reset : STD_LOGIC := '0';
    signal g : STD_LOGIC_VECTOR ( 3 downto 0 );
    signal h_sync : STD_LOGIC;
    signal ioe : STD_LOGIC;
    signal led : STD_LOGIC;
    signal r : STD_LOGIC_VECTOR ( 3 downto 0 );
    signal v_sync : STD_LOGIC;
    
begin
    EOT: main_wrapper port map(
        RX_UART_IN => RX_UART_IN,
        Reset => Reset,
        TX_UART_OUT => TX_UART_OUT,
        b => b,
        clk100mhz_in => clk100mhz_in,
        fault_reset => fault_reset,
        g => g,
        h_sync => h_sync,
        ioe => ioe,
        led => led,
        r => r,
        v_sync => v_sync
    );

    clk100mhz_in <= not clk100mhz_in after 5 ns;
    --debug_mock_clk <= not debug_mock_clk after 5 ns;
    
    init: process is
    begin
        wait for 600ns;
        
        wait;
    end process init;
    
    write_iram: process is
    begin
        wait for 600ns;
        RX_UART_IN <= '0';
        wait for 1100ns;
        -- instruction data
        RX_UART_IN <= rx_instruction(7);
        wait for 1100ns;
        RX_UART_IN <= rx_instruction(6);
        wait for 1100ns;
        RX_UART_IN <= rx_instruction(5);
        wait for 1100ns;
        RX_UART_IN <= rx_instruction(4);
        wait for 1100ns;
        RX_UART_IN <= rx_instruction(3);
        wait for 1100ns;
        RX_UART_IN <= rx_instruction(2);
        wait for 1100ns;
        RX_UART_IN <= rx_instruction(1);
        wait for 1100ns;
        RX_UART_IN <= rx_instruction(0);
        wait for 1100ns;
        -- reset
        RX_UART_IN <= '1';
        wait for 5000ns;
        -- start
        RX_UART_IN <= '0';
        wait for 1100ns;
        -- address data
        RX_UART_IN <= rx_address(15);
        wait for 1100ns;
        RX_UART_IN <= rx_address(14);
        wait for 1100ns;
        RX_UART_IN <= rx_address(13);
        wait for 1100ns;
        RX_UART_IN <= rx_address(12);
        wait for 1100ns;
        RX_UART_IN <= rx_address(11);
        wait for 1100ns;
        RX_UART_IN <= rx_address(10);
        wait for 1100ns;
        RX_UART_IN <= rx_address(9);
        wait for 1100ns;
        RX_UART_IN <= rx_address(8);
        wait for 1100ns;
        -- reset
        RX_UART_IN <= '1';
        wait for 5000ns;
        -- start
        RX_UART_IN <= '0';
        wait for 1100ns;        
        RX_UART_IN <= rx_address(7);
        wait for 1100ns;
        RX_UART_IN <= rx_address(6);
        wait for 1100ns;
        RX_UART_IN <= rx_address(5);
        wait for 1100ns;
        RX_UART_IN <= rx_address(4);
        wait for 1100ns;
        RX_UART_IN <= rx_address(3);
        wait for 1100ns;
        RX_UART_IN <= rx_address(2);
        wait for 1100ns;
        RX_UART_IN <= rx_address(1);
        wait for 1100ns;
        RX_UART_IN <= rx_address(0);
        wait for 1100ns;
        -- reset
        RX_UART_IN <= '1';
        wait for 5000ns;
        -- start
        RX_UART_IN <= '0';
        wait for 1100ns;
        -- data data
        RX_UART_IN <= rx_data(15);
        wait for 1100ns;
        RX_UART_IN <= rx_data(14);
        wait for 1100ns;
        RX_UART_IN <= rx_data(13);
        wait for 1100ns;
        RX_UART_IN <= rx_data(12);
        wait for 1100ns;
        RX_UART_IN <= rx_data(11);
        wait for 1100ns;
        RX_UART_IN <= rx_data(10);
        wait for 1100ns;
        RX_UART_IN <= rx_data(9);
        wait for 1100ns;
        RX_UART_IN <= rx_data(8);
        wait for 1100ns;
        -- reset
        RX_UART_IN <= '1';
        wait for 5000ns;
        -- start
        RX_UART_IN <= '0';
        wait for 1100ns;        
        RX_UART_IN <= rx_data(7);
        wait for 1100ns;
        RX_UART_IN <= rx_data(6);
        wait for 1100ns;
        RX_UART_IN <= rx_data(5);
        wait for 1100ns;
        RX_UART_IN <= rx_data(4);
        wait for 1100ns;
        RX_UART_IN <= rx_data(3);
        wait for 1100ns;
        RX_UART_IN <= rx_data(2);
        wait for 1100ns;
        RX_UART_IN <= rx_data(1);
        wait for 1100ns;
        RX_UART_IN <= rx_data(0);
        wait for 1100ns;
        -- reset
        RX_UART_IN <= '1';
        wait for 15000ns;
        
        -- request gram
        RX_UART_IN <= '0';
        wait for 1100ns;
        -- instruction data
        RX_UART_IN <= '0';
        wait for 1100ns;
        RX_UART_IN <= '0';
        wait for 1100ns;
        RX_UART_IN <= '1';
        wait for 1100ns;
        RX_UART_IN <= '1';
        wait for 1100ns;
        RX_UART_IN <= '0';
        wait for 1100ns;
        RX_UART_IN <= '0';
        wait for 1100ns;
        RX_UART_IN <= '1';
        wait for 1100ns;
        RX_UART_IN <= '0';
        wait for 1100ns;
        -- reset
        RX_UART_IN <= '1';
        wait for 5000ns;
        -- start
        RX_UART_IN <= '0';
        wait for 1100ns;
        -- address data
        RX_UART_IN <= '0';
        wait for 1100ns;
        RX_UART_IN <= '0';
        wait for 1100ns;
        RX_UART_IN <= '0';
        wait for 1100ns;
        RX_UART_IN <= '0';
        wait for 1100ns;
        RX_UART_IN <= '0';
        wait for 1100ns;
        RX_UART_IN <= '0';
        wait for 1100ns;
        RX_UART_IN <= '0';
        wait for 1100ns;
        RX_UART_IN <= '0';
        wait for 1100ns;
        -- reset
        RX_UART_IN <= '1';
        wait for 5000ns;
        -- start
        RX_UART_IN <= '0';
        wait for 1100ns;        
        RX_UART_IN <= '0';
        wait for 1100ns;
        RX_UART_IN <= '0';
        wait for 1100ns;
        RX_UART_IN <= '0';
        wait for 1100ns;
        RX_UART_IN <= '0';
        wait for 1100ns;
        RX_UART_IN <= '0';
        wait for 1100ns;
        RX_UART_IN <= '0';
        wait for 1100ns;
        RX_UART_IN <= '0';
        wait for 1100ns;
        RX_UART_IN <= '0';
        wait for 1100ns;
        -- reset
        RX_UART_IN <= '1';
        wait for 5000ns;
        -- start
        RX_UART_IN <= '0';
        wait for 1100ns;
        -- address data
        RX_UART_IN <= '0';
        wait for 1100ns;
        RX_UART_IN <= '0';
        wait for 1100ns;
        RX_UART_IN <= '0';
        wait for 1100ns;
        RX_UART_IN <= '0';
        wait for 1100ns;
        RX_UART_IN <= '0';
        wait for 1100ns;
        RX_UART_IN <= '0';
        wait for 1100ns;
        RX_UART_IN <= '0';
        wait for 1100ns;
        RX_UART_IN <= '0';
        wait for 1100ns;
        -- reset
        RX_UART_IN <= '1';
        wait for 5000ns;
        -- start
        RX_UART_IN <= '0';
        wait for 1100ns;        
        RX_UART_IN <= '0';
        wait for 1100ns;
        RX_UART_IN <= '0';
        wait for 1100ns;
        RX_UART_IN <= '0';
        wait for 1100ns;
        RX_UART_IN <= '0';
        wait for 1100ns;
        RX_UART_IN <= '0';
        wait for 1100ns;
        RX_UART_IN <= '0';
        wait for 1100ns;
        RX_UART_IN <= '0';
        wait for 1100ns;
        RX_UART_IN <= '0';
        wait for 1100ns;
        -- reset
        RX_UART_IN <= '1';
        wait for 5000ns;
        
        wait;
       

    end process write_iram;

end Behavioral;
