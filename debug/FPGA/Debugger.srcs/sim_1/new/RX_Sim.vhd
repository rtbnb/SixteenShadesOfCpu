----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.11.2024 15:03:07
-- Design Name: 
-- Module Name: RX_Sim - Behavioral
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

entity RX_Sim is
--  Port ( );
end RX_Sim;

architecture Behavioral of RX_Sim is
    component RX_UART is
        Port (
            clk: in std_logic;
            rx_serial_input: in std_logic;
            data_output: out std_logic_vector(7 downto 0);
            data_valid: out std_logic
        );
    end component RX_UART;
    signal clk: std_logic := '0';
    signal rx_serial_input, data_valid: std_logic;
    signal data_output: std_logic_vector(7 downto 0) := (others => '0');
    signal data_sep_clk: std_logic := '0';
begin
    EUT: RX_UART port map(
        clk => clk,
        rx_serial_input => rx_serial_input,
        data_output => data_output,
        data_valid => data_valid
    );
    
    clock: process begin
        clk <= not clk;
        wait for 5ns;
    end process clock;
    
    rx_test: process begin
        rx_serial_input <= '1';
        wait for 20ns;
        
        -- start data receive test
        rx_serial_input <= '0';
        data_sep_clk <= '0';
        wait for 104170ns;
        data_sep_clk <= not data_sep_clk;
        rx_serial_input <= '1';
        wait for 104170ns;
        data_sep_clk <= not data_sep_clk;
        rx_serial_input <= '0';
        wait for 104170ns;
        data_sep_clk <= not data_sep_clk;
        rx_serial_input <= '1';
        wait for 104170ns;
        data_sep_clk <= not data_sep_clk;
        rx_serial_input <= '0';
        wait for 104170ns;
        data_sep_clk <= not data_sep_clk;
        rx_serial_input <= '1';
        wait for 104170ns;
        data_sep_clk <= not data_sep_clk;
        rx_serial_input <= '0';
        wait for 104170ns;
        data_sep_clk <= not data_sep_clk;
        rx_serial_input <= '1';
        wait for 104170ns;
        data_sep_clk <= not data_sep_clk;
        rx_serial_input <= '0';
        wait for 104170ns;
        data_sep_clk <= not data_sep_clk;
        rx_serial_input <= '1';
        wait for 104170ns;
    end process rx_test;


end Behavioral;
