----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 16.11.2024 12:24:33
-- Design Name: 
-- Module Name: Debugger - Behavioral
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

entity Debugger is
    Port (
        clk: in std_logic;
        b1: in std_logic;
    
        rx_data: in std_logic_vector(7 downto 0);
        rx_data_valid: in std_logic;
        led: out std_logic_vector(3 downto 0);
        
        tx_data: out std_logic_vector(7 downto 0);
        tx_data_valid: out std_logic;
        tx_data_sended: in std_logic
    );
end Debugger;

architecture Behavioral of Debugger is
    signal tx_data_valid_s: std_logic := '0';
    signal tx_data_s: std_logic_vector(7 downto 0) := "10101010";
    signal last_button_press: std_logic := '0';
    signal led_s: std_logic_vector(3 downto 0) := "0000";
begin
    tx_data_valid <= tx_data_valid_s;
    led <= led_s;
    tx: process(b1, clk)
    begin
        if rising_edge(clk) then
            if (b1 = '1') then
                last_button_press <= '1';
                if (last_button_press = '0') then
                    tx_data <= tx_data_s;
                    tx_data_valid_s <= '1';
                end if;
            else
                last_button_press <= '0';
                tx_data_valid_s <= '0';
            end if;
        end if;
    end process tx;

    rx: process(clk, rx_data_valid)
    begin
        if rising_edge(rx_data_valid) then
            led_s(0) <= rx_data(0);
            led_s(1) <= rx_data(1);
            led_s(2) <= rx_data(2);
            led_s(3) <= rx_data(3);
        end if;
    end process rx;


end Behavioral;
