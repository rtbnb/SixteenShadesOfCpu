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
    b1 : in STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rx_data_in : in STD_LOGIC;
    tx_data_out : out STD_LOGIC
    );
    end component design_1;
    
    signal led: std_logic_vector(3 downto 0);
    signal CLK100MHZ: std_logic := '0';
    signal rx_data_in: std_logic;
    signal b1: std_logic := '0';
    signal tx_data_out: std_logic;

begin
    EUT: design_1 port map(
        CLK100MHZ => CLK100MHZ,
        rx_data_in => rx_data_in,
        led => led,
        b1 => b1,
        tx_data_out => tx_data_out
    );
    
    clock: process begin
        CLK100MHZ <= not CLK100MHZ;
        wait for 5ns;
    end process clock;
    
    tx_test: process begin
        b1 <= '0';
        wait for 20ns;
        b1 <= '1';
        wait for 10ns;
        b1 <= '0';
        wait for 2083400ns;
    end process tx_test;
    
    rx_test: process begin
        rx_data_in <= '1';
        wait for 20ns;
        
        -- start data receive test
        rx_data_in <= '0';
        wait for 104170ns;
        rx_data_in <= '1';
        wait for 104170ns;
        rx_data_in <= '0';
        wait for 104170ns;
        rx_data_in <= '1';
        wait for 104170ns;
        rx_data_in <= '0';
        wait for 104170ns;
        rx_data_in <= '1';
        wait for 104170ns;
        rx_data_in <= '0';
        wait for 104170ns;
        rx_data_in <= '1';
        wait for 104170ns;
        rx_data_in <= '0';
        wait for 104170ns;
        rx_data_in <= '1';
        wait for 104170ns;
    end process rx_test;
    


end Behavioral;
