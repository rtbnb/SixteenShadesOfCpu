----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 16.11.2024 12:37:37
-- Design Name: 
-- Module Name: DebugSim - Behavioral
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

entity DebugSim is
--  Port ( );
end DebugSim;

architecture Behavioral of DebugSim is
    component design_1 is
    port (
        CLK100MHZ : in STD_LOGIC;
        rx_data_in : in STD_LOGIC;
        tx_data_out : out STD_LOGIC
    );
    end component design_1;
    
    signal CLK100MHZ: std_logic := '0';
    signal rx_data_in: std_logic;
    signal tx_data_out: std_logic;

begin
    EUT: design_1 port map(
        CLK100MHZ => CLK100MHZ,
        rx_data_in => rx_data_in,
        tx_data_out => tx_data_out
    );
    
    clock: process begin
        CLK100MHZ <= not CLK100MHZ;
        wait for 5ns;
    end process clock;
    
    debug_test: process begin
        rx_data_in <= '1';
        wait for 10ns;
        
        -- test debug data
        -- start bit
        rx_data_in <= '0';
        wait for 1090ns;
        -- data bits
        rx_data_in <= '0';
        wait for 1090ns;
        rx_data_in <= '0';
        wait for 1090ns;
        rx_data_in <= '0';
        wait for 1090ns;
        rx_data_in <= '0';
        wait for 1090ns;
        rx_data_in <= '0';
        wait for 1090ns;
        rx_data_in <= '0';
        wait for 1090ns;
        rx_data_in <= '0';
        wait for 1090ns;
        rx_data_in <= '0';
        wait for 1090ns;
        -- stop bit
        rx_data_in <= '1';
        wait for 1090ns;
        
        -- start bit
        rx_data_in <= '0';
        wait for 1090ns;
        -- data bits
        rx_data_in <= '0';
        wait for 1090ns;
        rx_data_in <= '0';
        wait for 1090ns;
        rx_data_in <= '0';
        wait for 1090ns;
        rx_data_in <= '0';
        wait for 1090ns;
        rx_data_in <= '0';
        wait for 1090ns;
        rx_data_in <= '0';
        wait for 1090ns;
        rx_data_in <= '0';
        wait for 1090ns;
        rx_data_in <= '0';
        wait for 1090ns;
        -- stop bit
        rx_data_in <= '1';
        wait for 1090ns;
        
        -- start bit
        rx_data_in <= '0';
        wait for 1090ns;
        -- data bits
        rx_data_in <= '0';
        wait for 1090ns;
        rx_data_in <= '0';
        wait for 1090ns;
        rx_data_in <= '0';
        wait for 1090ns;
        rx_data_in <= '0';
        wait for 1090ns;
        rx_data_in <= '0';
        wait for 1090ns;
        rx_data_in <= '0';
        wait for 1090ns;
        rx_data_in <= '0';
        wait for 1090ns;
        rx_data_in <= '0';
        wait for 1090ns;
        -- stop bit
        rx_data_in <= '1';
        wait for 1090ns;
        
        wait;
    end process debug_test;


end Behavioral;
