----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.11.2024 15:39:29
-- Design Name: 
-- Module Name: mainSim - Behavioral
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

entity mainSim is
--  Port ( );
end mainSim;

architecture Behavioral of mainSim is
    component main_wrapper is
      port (
        Reset : in STD_LOGIC;
        led : out STD_LOGIC;
        TX_UART_OUT : out STD_LOGIC;
        RX_UART_IN : in STD_LOGIC;
        CLK100MHZ : in STD_LOGIC
      );
    end component main_wrapper;
    
    signal CLK100MHZ, Reset, led, TX_UART_OUT, RX_UART_IN : STD_LOGIC;
begin
    
    EUT : main_wrapper port map(
        CLK100MHZ => CLK100MHZ,
        led => led,
        TX_UART_OUT => TX_UART_OUT,
        RX_UART_IN => RX_UART_IN,
        Reset => Reset
    );
    
    uart_rx: process begin
        RX_UART_IN <= '1';
        wait for 400ns;
        
        -- test debug data
        -- start bit
        RX_UART_IN <= '0';
        wait for 1090ns;
        -- data bits
        RX_UART_IN <= '0';
        wait for 1090ns;
        RX_UART_IN <= '0';
        wait for 1090ns;
        RX_UART_IN <= '0';
        wait for 1090ns;
        RX_UART_IN <= '0';
        wait for 1090ns;
        RX_UART_IN <= '0';
        wait for 1090ns;
        RX_UART_IN <= '0';
        wait for 1090ns;
        RX_UART_IN <= '0';
        wait for 1090ns;
        RX_UART_IN <= '0';
        wait for 1090ns;
        -- stop bit
        RX_UART_IN <= '1';
        wait for 1090ns;
        
        -- start bit
        RX_UART_IN <= '0';
        wait for 1090ns;
        -- data bits
        RX_UART_IN <= '0';
        wait for 1090ns;
        RX_UART_IN <= '0';
        wait for 1090ns;
        RX_UART_IN <= '0';
        wait for 1090ns;
        RX_UART_IN <= '0';
        wait for 1090ns;
        RX_UART_IN <= '0';
        wait for 1090ns;
        RX_UART_IN <= '0';
        wait for 1090ns;
        RX_UART_IN <= '0';
        wait for 1090ns;
        RX_UART_IN <= '0';
        wait for 1090ns;
        -- stop bit
        RX_UART_IN <= '1';
        wait for 1090ns;
        
        -- start bit
        RX_UART_IN <= '0';
        wait for 1090ns;
        -- data bits
        RX_UART_IN <= '0';
        wait for 1090ns;
        RX_UART_IN <= '0';
        wait for 1090ns;
        RX_UART_IN <= '0';
        wait for 1090ns;
        RX_UART_IN <= '0';
        wait for 1090ns;
        RX_UART_IN <= '0';
        wait for 1090ns;
        RX_UART_IN <= '0';
        wait for 1090ns;
        RX_UART_IN <= '0';
        wait for 1090ns;
        RX_UART_IN <= '0';
        wait for 1090ns;
        -- stop bit
        RX_UART_IN <= '1';
        wait for 1090ns;
        wait;
    end process uart_rx;
    
    main: process begin
        CLK100MHZ <= '0';
        Reset <= '0';
        wait for 10 ns;
        Reset <= '1';
        wait for 10 ns;
        CLK100MHZ <= '1';
        wait for 10 ns;
        CLK100MHZ <= '0';
        wait for 10 ns;
        Reset <= '0';
        wait for 10 ns;
        WHILE true loop
            CLK100MHZ <= '1';
            wait for 5 ns;
            CLK100MHZ <= '0';
            wait for 5 ns;
        end loop;
        
       
    end process main;

end Behavioral;
